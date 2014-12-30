local addon = LibStub("AceAddon-3.0"):GetAddon("AutoQuest 2")addon.database = {    ["blacklist"] = {        ["10 Tickets - Last Month's Mutton"] = true,        ["12 Tickets - Lesser Darkmoon Prize"] = true,        ["1200 Tickets - Amulet of the Darkmoon"] = true,        ["1200 Tickets - Orb of the Darkmoon"] = true,        ["40 Tickets - Greater Darkmoon Prize"] = true,        ["40 Tickets - Schematic: Steam Tonk Controller"] = true,        ["5 Tickets - Darkmoon Flower"] = true,        ["5 Tickets - Minor Darkmoon Prize"] = true,        ["50 Tickets - Darkmoon Storage Box"] = true,        ["50 Tickets - Last Year's Mutton"] = true,        ["Agamaggan's Agility"] = true,        ["Agamaggan's Strength"] = true,        ["Allegiance to the Aldor"] = true,        ["Allegiance to the Scryers"] = true,        ["Argent Dawn Commission"] = true,        ["Blessing of Zim'Rhuk"] = true,        ["Champion's Pledge"] = true,        ["Cloth Scavenging"] = true,        ["Defender's Pledge"] = true,        ["Earth Sapta"] = true,        ["Essence Mangoes"] = true,        ["Fire Sapta"] = true,        ["Frenzyheart Champion"] = true,        ["Gnome Engineering"] = true,        ["Goblin Engineering"] = true,        ["Hand of the Oracles"] = true,        ["Imperial Plate Belt"] = true,        ["Imperial Plate Boots"] = true,        ["Imperial Plate Bracer"] = true,        ["Imperial Plate Chest"] = true,        ["Imperial Plate Helm"] = true,        ["Imperial Plate Leggings"] = true,        ["Imperial Plate Shoulders"] = true,        ["Meeting with the Master"] = true,        ["Onu is meditating"] = true,        ["Path of the Violet Assassin"] = true,        ["Path of the Violet Mage"] = true,        ["Path of the Violet Protector"] = true,        ["Path of the Violet Restorer"] = true,        ["Razorhide"] = true,        ["Return Trip"] = true,        ["Rising Spirit"] = true,        ["Sage's Pledge"] = true,        ["Signal for Pickup"] = true,        ["Signets of the Zandalar"] = true,        ["Spirit of the Wind"] = true,        ["The Path of the Conqueror"] = true,        ["The Path of the Invoker"] = true,        ["The Path of the Protector"] = true,        ["The Symbol of Life"] = true,        ["To the Top"] = true,        ["Wisdom of Agamaggan"] = true,        ["Zanza's Potent Potables"] = true,        ["A Change of Heart"] = true,        ["Path of Courage"] = true,        ["Path of Destruction"] = true,        ["Path of Vengeance"] = true,        ["Path of Wisdom"] = true,        ["Where in the World is Hemet Nesingwary?"] = true,        ["Little Orphan Kekek Of The Wolvar"] = true,        ["Little Orphan Roo Of The Oracles"] = true,    },    ["darkmoongivers"]={        ["Jessica Rogers"]=29455,--Target: Turtle        ["Finlay Coolshot"]=29434,--Tonk Commander        ["Maxima Blastenheimer"]=29436,--The Humanoid Cannonball        ["Mola"]=29463,--It's Hammer Time        ["Rinling"]=29438,--He Shoots, He Scores!    },    ["repeatable"] = {        --Quest Log Quests        ["A Boar's Vitality"] = {            ["ID"] = {2583},        },        ["A Cleansing Light"] = {            ["ID"] = {10420},        },        ["Again With the Zapped Giants"] = {            ["ID"] = {7725},        },        ["Binding the Dreadnaught"] = {            ["ID"] = {9131},        },        ["Chen's Empty Keg"] = {            ["ID"] = {822},        },        ["Frostsaber Provisions"] = {            ["ID"] = {4970},        },        ["Infallible Mind"] = {            ["ID"] = {2602},        },        ["Kum'isha's Endeavors"] = {            ["ID"] = {2522},        },        ["Libram of Focus"] = {            ["ID"] = {7484},        },        ["Libram of Protection"] = {            ["ID"] = {7485},        },        ["Libram of Rapidity"] = {            ["ID"] = {7483},        },        ["No More Mushrooms!"] = {            ["ID"] = {9773},        },        ["One Draenei's Junk..."] = {            ["ID"] = {3502},        },        ["Plants of Zangarmarsh"] = {            ["ID"] = {9802},        },        ["Preparations for War"] = {            ["ID"] = {13419},        },        ["Rage of Ages"] = {            ["ID"] = {2582},        },        ["Rampaging Giants"] = {            ["ID"] = {5981},        },        ["Refuel for the Zapping"] = {            ["ID"] = {7726},        },        ["Salt of the Scorpok"] = {            ["ID"] = {2586},        },        ["Secrets of the Qiraji"] = {            ["ID"] = {8784},        },        ["Snickerfang Jowls"] = {            ["ID"] = {2581},        },        ["Spirit of the Boar"] = {            ["ID"] = {2584},        },        ["Spiritual Domination"] = {            ["ID"] = {2604},        },        ["Strained Supplies"] = {            ["ID"] = {10017},        },        ["Synthesis of Power"] = {            ["ID"] = {10416},        },        ["The Basilisk's Bite"] = {            ["ID"] = {2601},        },        ["The Decisive Striker"] = {            ["ID"] = {2585},        },        ["Uncatalogued Species"] = {            ["ID"] = {9875},        },        ["Voren'thal's Visions"] = {            ["ID"] = {10024},        },        ["Winterfall Intrusion"] = {            ["ID"] = {5201},        },        ["Signal for Pickup"] = {            ["ID"] = {3451, 3483},            ["Standard Issue Flare Gun"] = {-1},        },        -- Turnin quests        ["Give Gerard a Drink"] = {            ["Refreshing Spring Water"] = {},        },        ["Distracting Jarven"] = {            ["Thunder Ale"] = {},        },        ["The Dormant Shade"] = {            ["Candle of Beckoning"] = {},        },        ["Stormwind Library"] = {            ["Library Scrip"] = {},        },        ["Filling the Soul Gem"] = {            ["Soul Gem"] = {},        },        ["Enticing Negolash"] = {            ["Barbecued Buzzard Wing"] = {10},            ["Junglevine Wine"] = {5},        },        ["Seal of the Earth"] = {            ["Diamond Runestone"] = {},            ["Opal Runestone"] = {},            ["Amethyst Runestone"] = {},        },        ["Corrupted Windblossom"] = {            ["Cenarion Plant Salve"] = {2},        },        ["Indurium Ore"] = {            ["Indurium Ore"] = {4},        },        ["A Broken Trap"] = {            ["Thorium Widget"] = {},            ["Frost Oil"] = {},        },        ["Essence of the Exile"] = {            ["Thundering Charm"] = {8},            ["Burning Charm"] = {8},            ["Cresting Charm"] = {8},        },        ["Water Pouch Bounty"] = {            ["Wastewander Water Pouch"] = {5},        },        ["A Donation of Wool"] = {            ["Wool Cloth"] = {60},        },        ["A Donation of Silk"] = {            ["Silk Cloth"] = {60},        },        ["Thorium Widget"] = {            ["Thorium Widget"] = {6},        },        ["Death's Embrace"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["The Qiraji Conqueror"] = {            ["Signet Ring of the Bronze Dragonflight"] = {},        },        ["War at Sea"] = {            ["Mageweave Cloth"] = {40},            ["Strong Flux"] = {4},        },        ["A Donation of Mageweave"] = {            ["Mageweave Cloth"] = {60},        },        ["A Crystalforged Darkrune"] = {            ["Darkrune"] = {},        },        ["Corrupted Whipper Root"] = {            ["Cenarion Plant Salve"] = {3},        },        ["A Donation of Runecloth"] = {            ["Runecloth"] = {60},        },        ["Fel Armaments"] = {            ["Fel Armament"] = {},        },        ["Invader's Scourgestones"] = {            ["Invader's Scourgestone"] = {10},        },        ["Salve via Mining"] = {            ["Tainted Vitriol"] = {4},        },        ["A Donation of Silk"] = {            ["Silk Cloth"] = {60},        },        ["A Donation of Mageweave"] = {            ["Mageweave Cloth"] = {60},        },        ["Small Furry Paws"] = {            ["Small Furry Paw"] = {5},        },        ["Falcon's Call"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["Craftsman's Writ"] = {            ["Argent Dawn Valor Token"] = {},        },        ["Additional Runecloth"] = {            ["Runecloth"] = {20},        },        ["A Bad Egg"] = {            ["Bad Egg"] = {},        },        ["Salve via Gathering"] = {            ["Fel Creep"] = {4},        },        ["Hodir's Tribute"] = {            ["Relic of Ulduar"] = {10},        },        ["A Donation of Mageweave"] = {            ["Mageweave Cloth"] = {60},        },        ["Torn Bear Pelts"] = {            ["Torn Bear Pelt"] = {5},        },        ["Vodouisant's Vigilant Embrace"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["Identify Plant Parts"] = {            ["Unidentified Plant Parts"] = {10},        },        ["Crystal Restore"] = {            ["Yellow Power Crystal"] = {10},            ["Green Power Crystal"] = {10},        },        ["Salve via Skinning"] = {            ["Patch of Tainted Skin"] = {5},        },        ["More Armor Scraps"] = {            ["Armor Scraps"] = {20},        },        ["Call of Air - Vipore's Fleet"] = {            ["Frostwolf Lieutenant's Medal"] = {},        },        ["Soft Bushy Tails"] = {            ["Soft Bushy Tail"] = {5},        },        ["Presence of Sight"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["Allegiance to Cenarion Circle"] = {            ["Cenarion Combat Badge"] = {},            ["Cenarion Logistics Badge"] = {},            ["Cenarion Tactical Badge"] = {},        },        ["Crystal Force"] = {            ["Green Power Crystal"] = {10},            ["Blue Power Crystal"] = {10},        },        ["More Heads Full of Ivory"] = {            ["Pair of Ivory Tusks"] = {3},        },        ["Salve via Disenchanting"] = {            ["Lesser Nether Essence"] = {},        },        ["Call of Air - Slidore's Fleet"] = {            ["Frostwolf Soldier's Medal"] = {},        },        ["Arena Grandmaster"] = {            ["Arena Master"] = {12},        },        ["Vibrant Plumes"] = {            ["Vibrant Plume"] = {5},        },        ["Hoodoo Hex"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["Field Duty Papers"] = {            ["Prepared Field Duty Papers"] = {},            ["Signed Field Duty Papers"] = {},        },        ["The Changing of Paths - Protector No More"] = {            ["Signet Ring of the Bronze Dragonflight"] = {},            ["Stone Scarab"] = {15},            ["Gold Scarab"] = {15},            ["Silver Scarab"] = {15},        },        ["The Changing of Paths - Invoker No More"] = {            ["Signet Ring of the Bronze Dragonflight"] = {},            ["Bronze Scarab"] = {15},            ["Crystal Scarab"] = {15},            ["Clay Scarab"] = {15},        },        ["The Super Egg-O-Matic"] = {            ["Hippogryph Egg"] = {},        },        ["Salve via Hunting"] = {            ["Corrupted Soul Shard"] = {6},        },        ["Call of Air - Ichman's Fleet"] = {            ["Frostwolf Commander's Medal"] = {},        },        ["Evil Bat Eyes"] = {            ["Evil Bat Eye"] = {10},        },        ["Prophetic Aura"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["The Changing of Paths - Conqueror No More"] = {            ["Signet Ring of the Bronze Dragonflight"] = {},            ["Bone Scarab"] = {15},            ["Ivory Scarab"] = {15},            ["Stone Scarab"] = {15},        },        ["More Shadow Dust"] = {            ["Shadow Dust"] = {6},        },        ["Morrowgrain to Feathermoon Stronghold"] = {            ["Morrowgrain"] = {5},        },        ["Encrypted Twilight Texts"] = {            ["Encrypted Twilight Text"] = {10},        },        ["Crystal Yield"] = {            ["Red Power Crystal"] = {10},            ["Blue Power Crystal"] = {10},        },        ["Minion's Scourgestones"] = {            ["Minion's Scourgestone"] = {20},        },        ["Animist's Caress"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["Master Angler"] = {            ["Speckled Tastyfish"] = {40},        },        ["Crystal Charge"] = {            ["Red Power Crystal"] = {10},            ["Yellow Power Crystal"] = {10},        },        ["More Rotting Hearts"] = {            ["Rotting Heart"] = {10},        },        ["Frostsaber E'ko"] = {            ["Frostsaber E'ko"] = {3},        },        ["Ivus the Forest Lord"] = {            ["Storm Crystal"] = {},        },        ["Apprentice Angler"] = {            ["Speckled Tastyfish"] = {5},        },        ["Zulian, Razzashi, and Hakkari Coins"] = {            ["Zulian Coin"] = {},            ["Razzashi Coin"] = {},            ["Hakkari Coin"] = {},        },        ["Crystal Spire"] = {            ["Blue Power Crystal"] = {10},            ["Yellow Power Crystal"] = {10},        },        ["Libram of Tenacity"] = {            ["Black Diamond"] = {},            ["Libram of Tenacity"] = {},            ["Crystal Ward"] = {4},            ["Eye of Kajal"] = {},        },        ["More Spinal Dust"] = {            ["Spinal Dust"] = {40},        },        ["The Medallion of Faith"] = {                ["Medallion of Faith"] = {},        },        ["Still Believing"] = {            ["Encrypted Twilight Text"] = {10},        },        ["Another Heap of Ethereals"] = {            ["Zaxxis Insignia"] = {10},        },        ["Libram of Resilience"] = {            ["Black Diamond"] = {},            ["Crystal Spire"] = {4},            ["Burning Essence"] = {},            ["Libram of Resilience"] = {},        },        ["More Dense Grinding Stones"] = {            ["Dense Grinding Stone"] = {8},        },        ["Single Sunfury Signet"] = {            ["Sunfury Signet"] = {},        },        ["Libram of Voracity"] = {            ["Black Diamond"] = {},            ["Libram of Voracity"] = {},            ["Whipper Root Tuber"] = {4},            ["Crystal Force"] = {4},        },        ["Chillwind E'ko"] = {            ["Chillwind E'ko"] = {3},        },        ["More Sunfury Signets"] = {            ["Sunfury Signet"] = {10},        },        ["Dalson's Tears Cauldron"] = {            ["Arcane Quickener"] = {},            ["Somatic Intensifier"] = {5},            ["Runecloth"] = {4},        },        ["Free Knot!"] = {            ["Gordok Shackle Key"] = {},        },        ["More Armor Kits"] = {            ["Rugged Armor Kit"] = {8},        },        ["Blessing of Zim'Torga"] = {            ["Drakkari Offerings"] = {10},        },        ["Corrupted Songflower"] = {            ["Cenarion Plant Salve"] = {2},        },        ["The Spectral Chalice"] = {            ["Star Ruby"] = {2},            ["Gold Bar"] = {20},            ["Truesilver Bar"] = {10},        },        ["Life's Finer Pleasures"] = {            ["Cenarion Spirits"] = {},        },        ["Frostmaul E'ko"] = {            ["Frostmaul E'ko"] = {3},        },        ["More Marks of Sargeras"] = {            ["Mark of Sargeras"] = {10},        },        ["More Thorium Widgets"] = {            ["Thorium Widget"] = {6},        },        ["The Pebble of Kajaro"] = {            ["Pebble of Kajaro"] = {},        },        ["Single Mark of Sargeras"] = {            ["Mark of Sargeras"] = {},        },        ["Medallion of Station"] = {            ["Large Brilliant Shard"] = {},            ["Abyssal Crest"] = {3},        },        ["Rocknot's Ale"] = {            ["Dark Iron Ale Mug"] = {2},        },        ["Wildkin E'ko"] = {            ["Wildkin E'ko"] = {},        },        ["More Bat Eyes"] = {            ["Evil Bat Eye"] = {10},        },        ["More Spore Sacs"] = {            ["Mature Spore Sac"] = {10},        },        ["More Fertile Spores"] = {            ["Fertile Spores"] = {6},        },        ["The Jewel of Kajaro"] = {            ["Pebble of Kajaro"] = {},        },        ["More Tendrils!"] = {            ["Bog Lord Tendril"] = {6},        },        ["More Glowcaps"] = {            ["Glowcap"] = {10},        },        ["Call of Air - Guse's Fleet"] = {            ["Stormpike Soldier's Flesh"] = {},        },        ["Carnival Boots"] = {            ["Embossed Leather Boots"] = {3},        },        ["Feathers for Grazle"] = {            ["Deadwood Headdress Feather"] = {5},        },        ["The Super Egg-O-Matic"] = {            ["Hippogryph Egg"] = {},        },        ["Always Seeking Solvent"] = {            ["Element 115"] = {},        },        ["Feathers for Nafien"] = {            ["Deadwood Headdress Feather"] = {5},        },        ["Yous Have Da Darkrune?"] = {            ["Darkrune"] = {},        },        ["Call of Air - Jeztor's Fleet"] = {            ["Stormpike Lieutenant's Flesh"] = {},        },        ["Carnival Jerkins"] = {            ["Toughened Leather Armor"] = {3},        },        ["Spawn of Jubjub"] = {            ["Dark Iron Ale Mug"] = {},        },        ["Beads for Salfa"] = {            ["Winterfall Spirit Beads"] = {5},        },        ["Gahrron's Withering Cauldron"] = {            ["Arcane Quickener"] = {},            ["Ectoplasmic Resonator"] = {4},            ["Runecloth"] = {4},        },        ["Call of Air - Mulverick's Fleet"] = {            ["Stormpike Commander's Flesh"] = {},        },        ["The World's Largest Gnome!"] = {            ["Barbaric Harness"] = {3},        },        ["Strength of Mount Mugamba"] = {            ["Strength of Mugamba"] = {},        },        ["Twilight Ring of Lordship"] = {            ["Abyssal Signet"] = {3},            ["Large Brilliant Shard"] = {5},        },        ["Single Mark of Kil'jaeden"] = {            ["Mark of Kil'jaeden"] = {},        },        ["Archmage No More"] = {            ["Violet Signet of the Archmage"] = {},        },        ["Crocolisk Boy and the Bearded Murloc"] = {            ["Turtle Scale Leggings"] = {},        },        ["The Rage of Mugamba"] = {            ["Strength of Mugamba"] = {},        },        ["Kezan's Taint"] = {            ["Kezan's Taint"] = {},        },        ["Protector No More"] = {            ["Violet Signet of the Great Protector"] = {},        },        ["Fish in a Bucket"] = {            ["Shellfish"] = {5},        },        ["Syndicate Emblems"] = {            ["Syndicate Emblem"] = {},        },        ["A Fair Trade"] = {            ["Thorium Shells"] = {200},        },        ["Locked Away"] = {            ["Dalson Cabinet Key"] = {},        },        ["Felstone Field Cauldron"] = {            ["Arcane Quickener"] = {},            ["Osseous Agitator"] = {6},            ["Runecloth"] = {4},        },        ["Armor Kits"] = {            ["Rugged Armor Kit"] = {8},        },        ["Winterfall E'ko"] = {            ["Winterfall E'ko"] = {},        },        ["Kezan's Unstoppable Taint"] = {            ["Kezan's Taint"] = {},        },        ["Arcane Tomes"] = {            ["Arcane Tome"] = {},        },        ["More Crystal Fragments"] = {            ["Oshu'gun Crystal Fragment"] = {10},        },        ["Oshu'gun Crystal Powder"] = {            ["Oshu'gun Crystal Powder Sample"] = {10},        },        ["Arrows Are For Sissies"] = {            ["Thorium Shells"] = {200},        },        ["The Grand Invoker"] = {            ["Signet Ring of the Bronze Dragonflight"] = {},        },        ["The Heathen's Brand"] = {            ["Heathen's Brand"] = {},        },        ["Corruptor's Scourgestones"] = {            ["Corruptor's Scourgestone"] = {},        },        ["Locked Away"] = {            ["Dalson Outhouse Key"] = {},        },        ["Libram of Rumination"] = {            ["Black Diamond"] = {},            ["Black Blood of the Tormented"] = {},            ["Gizzard Gum"] = {},            ["Libram of Rumination"] = {},        },        ["Enchanted South Seas Kelp"] = {            ["Enchanted South Seas Kelp"] = {},        },        ["Glowing Scorpid Blood"] = {            ["Glowing Scorpid Blood"] = {10},        },        ["Gaining Acceptance"] = {            ["Dark Iron Residue"] = {4},        },        ["Bloodpetal Sprouts"] = {            ["Bloodpetal Sprout"] = {3},        },        ["Writhing Haunt Cauldron"] = {            ["Arcane Quickener"] = {},            ["Somatic Intensifier"] = {5},            ["Runecloth"] = {4},        },        ["Purging the Chambers of Bash'ir"] = {            ["Ethereum Prison Key"] = {5},        },        ["Sage No More"] = {            ["Band of the Eternal Sage"] = {},        },        ["The Hero's Brand"] = {            ["Heathen's Brand"] = {},        },        ["Zandalarian Shadow Mastery Talisman"] = {            ["Zandalarian Shadow Talisman"] = {},        },        ["Rare Fish - Dezian Queenfish"] = {            ["Dezian Queenfish"] = {},        },        ["Restorer No More"] = {            ["Band of the Eternal Restorer"] = {},        },        ["Ice Thistle E'ko"] = {            ["Ice Thistle E'ko"] = {3},        },        ["Rare Fish - Brownell's Blue Striped Racer"] = {            ["Brownell's Blue Striped Racer"] = {},        },        ["Testing for Impurities - Un'Goro Crater"] = {            ["Un'Goro Slime Sample"] = {},        },        ["Champion No More"] = {            ["Band of the Eternal Champion"] = {},        },        ["Warsong Runner Update"] = {            ["Warsong Report"] = {},        },        ["Lokholar the Ice Lord"] = {            ["Stormpike Soldier's Blood"] = {},        },        ["Coarse Weightstone"] = {            ["Coarse Weightstone"] = {10},        },        ["The Eye of Zuldazar"] = {            ["The Eye of Zuldazar"] = {},        },        ["The Maelstrom's Tendril"] = {            ["Maelstrom's Tendril"] = {},        },        ["Nether Gas In a Fel Fire Engine"] = {            ["Condensed Nether Gas"] = {5},        },        ["Defender No More"] = {            ["Band of the Eternal Defender"] = {},        },        ["More Sparklematic Action"] = {            ["Grime-Encrusted Object"] = {},        },        ["Reading the Bones"] = {            ["Vrykul Bones"] = {15},        },        ["The Videre Elixir"] = {            ["Evoroot"] = {},        },        ["More Venom Sacs"] = {            ["Dreadfang Venom Sac"] = {8},        },        ["Favor Amongst the Brotherhood, Dark Iron Ore"] = {            ["Dark Iron Ore"] = {10},        },        ["For Great Honor"] = {            ["Strand of the Ancients Mark of Honor"] = {},            ["Arathi Basin Mark of Honor"] = {},            ["Warsong Gulch Mark of Honor"] = {},            ["Eye of the Storm Mark of Honor"] = {},            ["Alterac Valley Mark of Honor"] = {},        },        ["Ram Riding Harnesses"] = {            ["Frostwolf Hide"] = {},        },        ["Heavy Grinding Stone"] = {            ["Heavy Grinding Stone"] = {7},        },        ["More Obsidian Warbeads"] = {            ["Obsidian Warbeads"] = {10},        },        ["Abyssal Signets"] = {            ["Abyssal Signet"] = {3},        },        ["Assassin No More"] = {            ["Violet Signet of the Master Assassin"] = {},        },        ["Crypt Fiend Parts"] = {            ["Crypt Fiend Parts"] = {30},        },        ["Nexus-Prince Shaffar's Personal Chamber"] = {            ["Mark of the Nexus-King"] = {},        },        ["Warsong Scout Update"] = {            ["Warsong Report"] = {},        },        ["Favor Amongst the Brotherhood, Fiery Core"] = {            ["Fiery Core"] = {},        },        ["Concerted Efforts"] = {            ["Strand of the Ancients Mark of Honor"] = {},            ["Arathi Basin Mark of Honor"] = {},            ["Warsong Gulch Mark of Honor"] = {},            ["Eye of the Storm Mark of Honor"] = {},            ["Alterac Valley Mark of Honor"] = {},        },        ["Green Iron Bracers"] = {            ["Green Iron Bracers"] = {3},        },        ["Single Firewing Signet"] = {            ["Firewing Signet"] = {},        },        ["Coilfang Armaments"] = {            ["Coilfang Armaments"] = {},        },        ["More Feathers"] = {            ["Arakkoa Feather"] = {30},        },        ["Blessing of Zim'Abwa"] = {            ["Drakkari Offerings"] = {10},        },        ["Bloodpetal Zapper"] = {            ["Bloodpetal Sprout"] = {},        },        ["Bone Fragments"] = {            ["Bone Fragments"] = {30},        },        ["Fei Fei's Treat"] = {            ["Fei Fei Doggy Treat"] = {},        },        ["Favor Amongst the Brotherhood, Lava Core"] = {            ["Lava Core"] = {},        },        ["Big Black Mace"] = {            ["Big Black Mace"] = {},        },        ["The All-Seeing Eye of Zuldazar"] = {            ["The Eye of Zuldazar"] = {},        },        ["Vision of Voodress"] = {            ["Vision of Voodress"] = {},        },        ["Maelstrom's Wrath"] = {            ["Maelstrom's Tendril"] = {},        },        ["Rare Fish - Keefer's Angelfish"] = {            ["Keefer's Angelfish"] = {},        },        ["Core of Elements"] = {            ["Core of Elements"] = {30},        },        ["Testing for Corruption - Felwood"] = {            ["Felwood Slime Sample"] = {},        },        ["More Basilisk Eyes"] = {            ["Dampscale Basilisk Eye"] = {8},        },        ["Warsong Saw Blades"] = {            ["Deadly Blunderbuss"] = {},        },        ["Favor Amongst the Brotherhood, Core Leather"] = {            ["Core Leather"] = {2},        },        ["More Booty!"] = {            ["Armor Scraps"] = {20},        },        ["Rituals of Strength"] = {            ["Dense Grinding Stone"] = {},        },        ["Abyssal Crests"] = {            ["Abyssal Crest"] = {3},        },        ["More Irradiated Crystal Shards"] = {            ["Irradiated Crystal Shard"] = {10},        },        ["Corrupted Songflower"] = {            ["Cenarion Plant Salve"] = {2},        },        ["An Extraordinary Egg"] = {            ["Extraordinary Egg"] = {},        },        ["Morrowgrain to Darnassus"] = {            ["Morrowgrain"] = {10},        },        ["Accepting All Eggs"] = {            ["Netherwing Egg"] = {},        },        ["Traitor to the Bloodsail"] = {            ["Silk Cloth"] = {40},            ["Red Dye"] = {4},        },        ["Mortal Champions"] = {            ["Qiraji Lord's Insignia"] = {},        },        ["Favor Amongst the Brotherhood, Blood of the Mountain"] = {            ["Blood of the Mountain"] = {},        },        ["Copper Modulator"] = {            ["Copper Modulator"] = {5},        },        ["Abyssal Scepters"] = {            ["Abyssal Scepter"] = {3},        },        ["Dark Iron Scraps"] = {            ["Dark Iron Scraps"] = {30},        },        ["Junkboxes Needed"] = {            ["Heavy Junkbox"] = {5},        },        ["Corrupted Night Dragon"] = {            ["Cenarion Plant Salve"] = {4},        },        ["More Warbeads"] = {            ["Obsidian Warbeads"] = {10},        },        ["Remember Everfrost!"] = {            ["Everfrost Chip"] = {},        },        ["Restorer's Pledge"] = {            ["Everfrost Chip"] = {},        },        ["Whirring Bronze Gizmo"] = {            ["Whirring Bronze Gizmo"] = {7},        },        ["The Unmarred Vision of Voodress"] = {            ["Vision of Voodress"] = {},        },        ["Gurubashi, Vilebranch, and Witherbark Coins"] = {            ["Gurubashi Coin"] = {},            ["Vilebranch Coin"] = {},            ["Witherbark Coin"] = {},        },        ["More Warbeads!"] = {            ["Obsidian Warbeads"] = {10},        },        ["A Fine Egg"] = {            ["Fine Egg"] = {},        },        ["More Skulls For Brew"] = {            ["Crusader Skull"] = {},        },        ["Morrowgrain to Thunder Bluff"] = {            ["Morrowgrain"] = {10},        },        ["The Protector of Kalimdor"] = {            ["Signet Ring of the Bronze Dragonflight"] = {},        },        ["Sandfury, Skullsplitter, and Bloodscalp Coins"] = {            ["Sandfury Coin"] = {},            ["Skullsplitter Coin"] = {},            ["Bloodscalp Coin"] = {},        },        ["More Firewing Signets"] = {            ["Firewing Signet"] = {10},        },        ["Green Fireworks"] = {            ["Green Firework"] = {36},        },        ["Presence of Might"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["More Glowing Scorpid Blood"] = {            ["Glowing Scorpid Blood"] = {10},        },        ["Corrupted Night Dragon"] = {            ["Cenarion Plant Salve"] = {},        },        ["More Marks of Kil'jaeden"] = {            ["Mark of Kil'jaeden"] = {10},        },        ["Savage Fronds"] = {            ["Savage Frond"] = {30},        },        ["A Gallon of Blood"] = {            ["Stormpike Soldier's Blood"] = {5},        },        ["Gaining Even More Acceptance"] = {            ["Dark Iron Residue"] = {100},        },        ["Crystal Ward"] = {            ["Red Power Crystal"] = {10},            ["Green Power Crystal"] = {10},        },        ["Mechanical Repair Kits"] = {            ["Mechanical Repair Kit"] = {6},        },        ["Syncretist's Sigil"] = {            ["Primal Hakkari Idol"] = {},            ["Punctured Voodoo Doll"] = {},        },        ["Libram of Constitution"] = {            ["Black Diamond"] = {},            ["Lung Juice Cocktail"] = {},            ["Libram of Constitution"] = {},            ["Night Dragon's Breath"] = {4},        },        ["Making Amends"] = {            ["Runecloth"] = {40},            ["Coal"] = {4},        },        ["Bring Me Another Shrubbery!"] = {            ["Sanguine Hibiscus"] = {5},        },        ["An Ordinary Egg"] = {            ["Ordinary Egg"] = {},        },        ["Dadanga is Hungry!"] = {            ["Bloodpetal Sprout"] = {15},        },        ["Mending Old Wounds"] = {            ["Linen Cloth"] = {40},            ["Empty Vial"] = {4},        },        ["Ram Hide Harnesses"] = {            ["Alterac Ram Hide"] = {},        },        ["Shardtooth E'ko"] = {            ["Shardtooth E'ko"] = {3},        },        ["Crystal Cluster"] = {            ["Storm Crystal"] = {5},        },        ["Icy Blue Mechanostrider Replacement"] = {            ["Icy Blue Mechanostrider Mod A"] = {},        },        ["White Mechanostrider Replacement"] = {            ["White Mechanostrider Mod B"] = {},        },        ["Ivory Raptor Replacement"] = {            ["Whistle of the Ivory Raptor"] = {},        },        ["Red Raptor Replacement"] = {            ["Whistle of the Mottled Red Raptor"] = {},        },        ["Frostsaber Replacement"] = {            ["Reins of the Ancient Frostsaber"] = {},        },        ["Nightsaber Replacement"] = {            ["Reins of the Nightsaber"] = {},        },        ["Black Ram Exchange"] = {            ["Black Ram"] = {},        },        ["White Stallion Exchange"] = {            ["White Stallion Bridle"] = {},        },        ["Palomino Exchange"] = {            ["Palomino Bridle"] = {},        },        ["Frost Ram Exchange"] = {            ["Frost Ram"] = {},        },        ["Could I get a Fishing Flier?"] = {            ["Fishing Tournament!"] = {-1}        },        ["Better Luck Next Time"] = {            ["Blacktip Shark"] = {},        },        ["Kalu'ak Fishing Derby"] = {            ["Blacktip Shark"] = {},        },        ["Titanium Powder"] = {            ["Titanium Powder"] = {10},        },    },}local mt = {}setmetatable(addon.database.repeatable, mt)--Faction Specific Repeatable Questsaddon.database.repeatable["Alliance"] = {    ["Empty Stables"] = {        ["ID"] = {7027},    },    ["Gift Giving"] = {        ["Alliance Gift Collection"] = {},    },}addon.database.repeatable["Horde"] = {    ["Empty Stables"] = {        ["ID"] = {7001},    },    ["Gift Giving"] = {        ["Horde Gift Collection"] = {},    },}mt.__index = addon.database.repeatable[UnitFactionGroup("player")]