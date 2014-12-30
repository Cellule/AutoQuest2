local core, module = AutoQuest2, AutoQuest2.questslocal L = AutoQuest2.Lcore.DarkmoonDONTDOIT = false------------------ Initialize ------------------function module:OnEnable()    self:RegisterEvent("GOSSIP_SHOW", "Quests_OnEvent")    self:RegisterEvent("GOSSIP_CLOSED", "Quests_OnEvent")    self:RegisterEvent("QUEST_GREETING", "Quests_OnEvent")    self:RegisterEvent("QUEST_DETAIL", "Quests_OnEvent")    self:RegisterEvent("QUEST_PROGRESS", "Quests_OnEvent")    self:RegisterEvent("QUEST_COMPLETE", "Quests_OnEvent")    self:RegisterEvent("QUEST_FINISHED", "Quests_OnEvent")    self:RegisterEvent("QUEST_ACCEPTED", "Quests_OnEvent")    self.warnedAutoAccept = false;    self.questNPC = { name = "", exists = false };endfunction module:OnDisable()    self:UnregisterAllEvents()end----------------- Functions -----------------function module:CheckKeyorOption(mod)  -- IsQuestTypeOverride  -- return the value But if the modifier key is held down then reverse the logic    local fnc = core:OptionToString(core, "modifier_"..mod);    local IsOverride = not not fnc();    if core.Paranoia > 2 then        print ("Looking for [", mod, "] Key is [", IsOverride, "] Value is", core.db.profile[mod]);    end    if ( core.db.profile[mod] ) then        return not IsOverride    else        return IsOverride    endendfunction module:DoesQuestMatch( isTrivial ,isDaily, isRepeatable )    if (isTrivial and not module:CheckKeyorOption("trivial") ) then return false; end    if (isDaily and not module:CheckKeyorOption("daily") ) then return false; end    if (isRepeatable and not module:CheckKeyorOption("repeatable") )then return false; end    return true;endfunction module:GetQuestLogInfoByName(title)    local i = 1    while GetQuestLogTitle(i) do        local questTitle, level, questTag, suggestedGroup, isHeader, _, completed, daily = GetQuestLogTitle(i)        if ( not isHeader and questTitle:find(title) ) then            local numObjectives = GetNumQuestLeaderBoards(i)            return questTitle, level, suggestedGroup, daily, completed, numObjectives        end        i = i + 1    endend-- Function Change 01/12/2010 --function module:IsRepeatableQuestCompletable(title)    for item, count in pairs(core.database.repeatable[title]) do        count = count[1] or 1        if ( count == -1 ) then            if ( GetItemCount(item) > 0 ) then                return false;            end        elseif ( GetItemCount(item) < count ) then            return false;        end    end    return true;endfunction module:BlacklistedQuest(...)  return core.database.blacklist[select(i, ...)]endfunction module:PushQuest(index)    SelectQuestLogEntry(index)    if ( GetQuestLogPushable() ) then        QuestLogPushQuest(index)    endendfunction module:ShowQuestDetail(index)    if ( core.db.profile.feedback_detailType == 2 ) then        SelectQuestLogEntry(index)        local questDescription, questObjectives = GetQuestLogQuestText()    if questObjectives then      print(string.format("|cFFFFFF00Quest objective: |r%s", gsub(questObjectives, "\n\n", "\n")))    else      print(questDescription);    end    else        ExpandQuestHeader(GetQuestSortIndex(index));        QuestLog_OpenToQuest(index)    endendfunction module:NumberWithCommas(n)   local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')   return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..rightendfunction module:ShowQuestReward(index)  -- only display in the chat frame, as the quest log shows this already...  if ( core.db.profile.feedback_detailType == 2 and core.db.profile.feedback_include_reward ) then    SelectQuestLogEntry(index)    local reward = {}    local experience = GetQuestLogRewardXP()    if experience and experience > 0 then      table.insert(reward, string.format("%s experience", module:NumberWithCommas(experience)))    end    local money = GetQuestLogRewardMoney()    if money and money > 0 then      table.insert(reward, GetCoinTextureString(money))    end    local numRewards = GetNumQuestLogRewards()    if numRewards and numRewards > 0 then      local items = {}      for i=1, numRewards do table.insert(items, GetQuestItemLink("reward", i)) end      table.insert(reward, table.concat(items, ", "))    end    local numChoices = GetNumQuestLogChoices()    if numChoices and numChoices == 1 then      -- I have trouble imagining this, but Blizzard are odd sometimes, and      -- stranger things could happen that just one choice.      table.insert(reward, GetQuestItemLink("choice", 1))    elseif numChoices and numChoices > 1 then      local items = {}      for i=1, numChoices do table.insert(items, GetQuestItemLink("choice", i)) end      items[#items] = "or " .. items[#items]      table.insert(reward, "one of " .. table.concat(items, ", "))    end    local icon, spellname, istradeskill, isspell = GetQuestLogRewardSpell()    if spellname then      if istradeskill then        table.insert(reward, string.format("|T%s:0|t%s skill", icon, spellname))      elseif isspell then        table.insert(reward, string.format("|T%s:0|t%s spell", icon, spellname))      else        table.insert(reward, string.format("|T%s:0|t%s", icon, spellname))      end    end    local skillName, icon, points = GetQuestLogRewardSkillPoints()    if skillName and points and points > 0 then      table.insert(reward, string.format("%d |T%s:0|t%s skill", points, icon, skillName))    end    for i=1, GetNumQuestLogRewardCurrencies() do      local name, icon, num = GetQuestLogRewardCurrencyInfo(i)      table.insert(reward, string.format("%d |T%s:0|t%s", num, icon, name))    end    title = GetQuestLogRewardTitle()    if title and title ~= "" then      table.insert(string.format("the title '%s'", title))    end    -- ...and, finally, display that to the user, nicely formatted.    if #reward > 1 then reward[#reward] = "and " .. reward[#reward] end    print(string.format("|cFFFFFF00Quest reward: |r%s", table.concat(reward, ", ")))  endendfunction module:ResetModules(event)    if ( event == "GOSSIP_CLOSED" ) then        if ( module.questNPC.exists ) then            module.questNPC.exists = false;        end    elseif ( event == "QUEST_FINISHED" ) then        module:ScheduleTimer(function() module.questNPC.exists = false; end, 0.1)    else        module.questNPC.name = GetUnitName("npc")        module.questNPC.exists = UnitExists("npc")        module:CancelAllTimers()    end    if core.Paranoia >4 then print("Reset Modules done") endendfunction module:WarnAutoAccept()    if ( not module.warnedAutoAccept ) then  -- @todo This prints for all sorts of things        core:Print(core, "You are in a Starting Zone. All Available Quests will be Auto Accepted.")        module.warnedAutoAccept = true;    endendfunction module:CompleteQuest()    CompleteQuest();    HideUIPanel(QuestFrame);end-------------- Events --------------function module:Quests_OnEvent(event, ...)    module:ResetModules(event)    local foundone = false;    if core.Paranoia > 4 then        print("Entering ",event);    end    if ( event == "GOSSIP_SHOW" ) then      if core.Paranoia>5 then print(GetNumGossipOptions(),GetNumGossipAvailableQuests() , GetNumGossipActiveQuests() ,GetNumAvailableQuests(),GetNumActiveQuests()); end      if core.Paranoia>6 then print("Clear DarkmoonDONTDOIT"); end      -- This gets SET on any quest Completion event So I HOPE it stops the darkmoon option acceptance Happened on shoot and cannon with Roocha (before code change)      core.DarkmoonDONTDOIT = false  -- I Believe theres a timing issue if the darkmoon quest is completed SOMETIMES I get to the gossipoptions still thinking I have the quest so I reaccept the game      -- select each quest - if its complete then a new event will fire, otherwise nothing will happen and we just select next quest      if module:CheckKeyorOption("complete") then        for i=1 , GetNumGossipActiveQuests() do -- the quests I have which maybe could be turned in          SelectGossipActiveQuest(i)          if core.Paranoia> 4 then print("Selected gossip QUEST Active ",i, " of ",GetNumGossipActiveQuests()) end  -- Does not mean they are completable!          foundone = true        end      end      if module:CheckKeyorOption("accept") then        for i=1 , GetNumGossipAvailableQuests() do  -- The quests which I might accept          if core.Paranoia> 4 then print("select quest Goss Avail",i) ; end          local isTrivial, isDaily, isRepeatable = GetAvailableQuestInfo(i) -- Weird the isDaily, isRepeatable dont work for the Dalaran fishing! so I've put got in the Quest detail to handle          if isTrivial or module:CheckKeyorOption("trivial") then            SelectGossipAvailableQuest(i)            if core.Paranoia> 4 then print("Selected gossip avail") end            foundone = true          end        end      end      if core.Paranoia> 6 then print("check DarkmoonDONTDOIT", core.DarkmoonDONTDOIT); end      -- DarkmoonDONTDOIT is for the timing problem on quest is complete      foundone = false      if module:CheckKeyorOption("readytoplay") and not core.DarkmoonDONTDOIT then        if module:DarkMoonisReady() then          for i=1 , GetNumGossipOptions() do -- Special case for Darkmoon Faire --            local title, type = select(i*2-1,GetGossipOptions())            if strfind(title,"Darkmoon Game Token") then              if core.Paranoia> 4 then print("DM:Found it",title, i); end              SelectGossipOption(i)              foundone = true              if core.Paranoia> 4 then print("DM:Selected gossip option",i) end            else              if core.Paranoia> 5 then print("DM:Not this one ",title, i); end            end          end        end        for i=1 , GetNumGossipOptions() do -- @TODO Check for GINA debt quest - hardcoded - bad probably want to data drive this with a list of gossips to just accept          local title, type = select(i*2-1,GetGossipOptions())          -- print(title, GetUnitName("target"))          if title and strfind(title,"Gina Mudclaw, regarding your debt") and core.db.profile.MoneyMaters.Process then            if core.Paranoia> 1 then print("GM:Found it",title, i); end            SelectGossipOption(i)            foundone = true            if core.Paranoia> 1 then print("GM:Selected gossip option",i) end          elseif title and strfind(title,"Threaten") and core.db.profile.MoneyMaters.Process and core.db.profile.MoneyMaters.Response==1 then            if core.Paranoia> 1 then print("GM:Found it",title, i); end            SelectGossipOption(i)            foundone = true            if core.Paranoia> 1 then print("GM:Selected gossip option",i) end          elseif title and strfind(title,"Offer to pay off") and core.db.profile.MoneyMaters.Process and core.db.profile.MoneyMaters.Response==2 then            if core.Paranoia> 1 then print("GM:Found it",title, i); end            SelectGossipOption(i)            foundone = true            if core.Paranoia> 1 then print("GM:Selected gossip option",i) end          elseif title and strfind(title,"I seek training") and not(GetUnitName("target") == "SungShin Ironpaw") then            if core.Paranoia> 1 then print("TRAIN:Found it",title, i); end            SelectGossipOption(i)            --foundone = true we dont do this so that auto train fires - but we dont tell the rest of the code its happening          else            if core.Paranoia> 1 then print("GM:Not this one ",title, i); end          end        end        if GetNumGossipOptions() == 1 and not foundone then          local title, type = select(1,GetGossipOptions())          if core.Paranoia> 1 then print("Single gossip and key pressed") end          SelectGossipOption(1)          foundone = true        end      end      if foundone then        HideUIPanel(GossipFrame)        if core.Paranoia> 4 then print("Hide gossip") ; end      end    elseif ( event == "QUEST_GREETING" ) then        local canComplete = module:CheckKeyorOption("complete");        local canAccept = module:CheckKeyorOption("accept");        if canAccept then          for i = 1 , GetNumAvailableQuests() do            local isTrivial, frequency, isRepeatable = GetAvailableQuestInfo(i)            if module:DoesQuestMatch(isTrivial , not (frequency == 1), isRepeatable) then              SelectAvailableQuest(i);            end          end        end        if canComplete then          for i = 1, GetNumActiveQuests() do            SelectActiveQuest(i);          end        end        if canAccept or canComplete then          HideUIPanel(QuestFrame);        end    elseif ( event == "QUEST_DETAIL" ) then        -- it sometimes comes straight in here without a greeting gossip        if core.Paranoia> 4 then print("Quest info", GetTitleText(),"Selectable ", "Daily:",QuestIsDaily() , "Weekly:", QuestIsWeekly() ); end            if ( QuestGetAutoAccept() ) then          GetTitleText()          module:WarnAutoAccept();          CloseQuest();          return;        elseif ( self.warnedAutoAccept ) then          self.warnedAutoAccept = false;        end            -- Return to normal operation  If we got in here without the gossip then I cant stop trivials as I dont think I can get the level of this quest        if module:CheckKeyorOption("accept") and (module:CheckKeyorOption("daily") or QuestIsDaily()) then          --print(core.db.profile.feedback_detail, core.db.profile.feedback_detailType )          -- A bit of a pain it seems that to show "ALL"" the text we need to open it so we cant accept it          -- removed this check as it just stops the whole acceptance process          --if (not core.db.profile.feedback_detail) or (core.db.profile.feedback_detailType == 2) then            AcceptQuest();            HideUIPanel(QuestFrame)          --end          return;        end    elseif ( event == "QUEST_PROGRESS" ) then        --TODO: Get the repeatable quest type and overide keys associated.        if IsQuestCompletable() then          module:CompleteQuest();        end        if module:CheckKeyorOption("complete") then          HideUIPanel(QuestFrame)        end    elseif ( event == "QUEST_COMPLETE" ) then        if core.Paranoia >4 then print("QC choices ",GetNumQuestChoices()) ; end        if ( GetNumQuestChoices() < 1 ) then          GetQuestReward()          if core.Paranoia> 6 then print("SET DarkmoonDONTDOIT"); end          core.DarkmoonDONTDOIT = true          HideUIPanel(QuestFrame)          return;        end        if ( GetNumQuestChoices() == 1 ) then          GetQuestReward(1)          HideUIPanel(QuestFrame)          return;        end    elseif ( event == "QUEST_ACCEPTED" ) then        if ( core.db.profile.push ) then            module:PushQuest(select(1, ...))        end        if ( core.db.profile.feedback_detail) then            module:ShowQuestDetail(select(1, ...))            module:ShowQuestReward(select(1, ...))        end    endendfunction module:DarkMoonisReady()  if core.Paranoia >4 then print("Is this a darkmoon person",GetUnitName("target") ); end  if GetUnitName("target") then -- We are talking to someone    if core.database.darkmoongivers[GetUnitName("target")] then -- we are talking to someone  we know gives one of our quests      if core.Paranoia >4 then print("Yes it is and this is the questID he gives",core.database.darkmoongivers[GetUnitName("target")]); end      if  module:HaveIncompleteQuest(core.database.darkmoongivers[GetUnitName("target")]) then        return true      end    end  end  return falseendfunction module:HaveIncompleteQuest(SearchQuestID)  local numQuests = GetNumQuestLogEntries(); -- Get the number of quests in my quest log  local questNo  for questNo = 1, numQuests -- Now, cycle through each quest in the quest log  do    --local questTitle, level, questTag, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily = GetQuestLogTitle(questNo); -- Get the information about each line in the quest log    -- So I know which parts i look at commented out the parts I dont use    local _ , _ , _ , _ , isHeader, _ , isComplete, _ = GetQuestLogTitle(questNo); -- Get the information about each line in the quest log    if (not isHeader) then-- Ignore the lines that are just headers rather than actual quests      local questID = tonumber(GetQuestLink(questNo):match("\124Hquest:(%d+):")); -- Get the actual quest ID      if core.Paranoia >5 then print("We have quest ",questID, " looking for",SearchQuestID); end      if questID == SearchQuestID then        if core.Paranoia >4 then print("We found ",questID, isComplete, " when looking for",SearchQuestID); end        if isComplete then          return false;        else          return true;        end      end    end  end  --- we've looked at all our current quests but not found a match  return false;end----------------------------------------------------------------------------------------------------- Options -----------------------------------------------------------------------------------------------------local IsDisabled = function()    return not core:IsEnabled()endlocal IsOverride = function()    return not core.db.profile.overrideendlocal get = function(info)    return info.arg and core.db.profile[info.arg] or core.db.profile[info[#info]]endlocal set = function(info, value)    local key = info.arg or info[#info]    core.db.profile[key] = valueendlocal function OSValues()endcore.options["AutoQuest 2"].args.quests = {    order = 10,    name = "Quests",    type = "group",    disabled = IsDisabled,    guiInline = true,    args = {        accept = {            order = 1,            name = "Automatically Accept Quests",            desc = "Automatically Accept Available Quests",            type = "toggle",            width = "full",            get = get,            set = set,        },        complete = {            order = 2,            name = "Automatically Turn In Quests",            desc = "Automatically Turn In Completed Active Quests",            type = "toggle",            width = "full",            get = get,            set = set,        },        push = {            order = 3,            name = "Automatically Share Quests",            desc = "Automatically Share Accepted Quests with other players.",            type = "toggle",            width = "full",            get = get,            set = set,        },        header_questTypes = {            order = 10,            name = "Quest Types",            type = "header",        },        description_questTypes = {            order = 11,            name = "These settings control the types of Quests Accepted and Turned In.",            type = "description",        },        shared = {            order = 12,            name = "Shared",            desc = "Accept Quests Shared by other players",            type = "toggle",            width = "half",            get = get,            set = set,        },        trivial = {            order = 13,            name = "Trivial",            desc = "Accept and Turn in Trivial Quests",            type = "toggle",            width = "half",            validate = function(info, value) core:ToggleTrivial(value) end,            get = get,            set = set,        },        daily = {            order = 14,            name = "Daily",            desc = "Accept and Turn In Daily Quests",            type = "toggle",            width = "half",            get = get,            set = set,        },        readytoplay = {            order = 15,            name = "Accept 1 Gossip",            desc = "Automatically skip the gossip on an NPCs with single Gossip selection, This will also automatically plays a Darkmoon Faire Game IF you have the quest \n This is a bit buggy - use the moodifier key instead",            type = "toggle",            width = "half",            get = get,            set = set,        },        repeatable = {            order = 16,            name = "Repeatable",            desc = "Turn In Repeatable Quests.\n(Example: 'A Donation of Wool')",            type = "toggle",            get = get,            set = set,        },        header_override = {            order = 20,            name = "Override",            type = "header",        },        description_override = {            order = 21,            name = "These modifier keys override the above settings while pressed",            type = "description",        },        modifier_accept = {            order = 22,            name = "Accept Quests",            desc = "",            type = "select",            width = "half",            values = {"Shift","Ctrl","Alt","None",},            get = get,            set = set,        },        modifier_readytoplay = {            order = 27,            name = "Gossip",            desc = "",            type = "select",            width = "half",            values = {"Shift","Ctrl","Alt","None",},            get = get,            set = set,        },        modifier_complete = {            order = 23,            name = "Turn In Quests",            desc = "",            type = "select",            width = "half",            values = {"Shift","Ctrl","Alt","None",},            get = get,            set = set,        },        modifier_trivial = {            order = 24,            name = "Trivial Quests",            desc = "",            type = "select",            width = "half",            values = {"Shift","Ctrl","Alt","None",},            get = get,            set = set,        },        modifier_daily = {            order = 25,            name = "Daily Quests",            desc = "",            type = "select",            width = "half",            values = { "Shift", "Ctrl", "Alt", "None", },            get = get,            set = set,        },        modifier_repeatable = {            order = 26,            name = "Repeatable Quests",            desc = "",            type = "select",            width = "half",            values = {"Shift","Ctrl","Alt","None",},            get = get,            set = set,        },    }}module.questLogTemplate = { questLog = true, chooseItems = nil, tooltip = "GameTooltip",    elements = {        QuestInfo_ShowTitle, 5, -5,        QuestInfo_ShowObjectivesText, 0, -5,        QuestInfo_ShowTimer, 0, -10,        QuestInfo_ShowObjectives, 0, -10,        QuestInfo_ShowRequiredMoney, 0, 0,        QuestInfo_ShowGroupSize, 0, -10,        QuestInfo_ShowRewards, 0, -10,        QuestInfo_ShowSpacer, 0, -10    }}