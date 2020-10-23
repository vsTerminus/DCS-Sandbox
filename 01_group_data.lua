-----------------------------------------

--[[

These groups are built and placed using the Mission Editor in "Spawnable_Units.miz"
When the mission runs MIST will write a file called 01_group_data.lua to your Logs directory.

Replace the "spawnable.groupData" table below with the one written to your Logs folder whenever you make updates
to the Spawnable_Units mission, and re-run 'make install' to push the update to all the sandboxes.

]]--

exported = {}

exported.groupData = 
{
	["OSA-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -39599.461721074,
				["x"] = 44510.914877979,
				["name"] = "",
				["speed"] = 5.5555555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 1,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[4] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 4,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["country"] = "russia",
		["groupName"] = "OSA-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1220102982056,
				["point"] = 
				{
					["y"] = -39599.461721074,
					["x"] = 44510.914877979,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39599.461721074,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44510.914877979,
				["unitId"] = 95,
				["category"] = "vehicle",
				["unitName"] = "T72-2-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1220102982056,
				["point"] = 
				{
					["y"] = -39593.604953449,
					["x"] = 44209.729143111,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39593.604953449,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44209.729143111,
				["unitId"] = 96,
				["category"] = "vehicle",
				["unitName"] = "OSA-1-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1220102982056,
				["point"] = 
				{
					["y"] = -39189.705456877,
					["x"] = 44519.098970273,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39189.705456877,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44519.098970273,
				["unitId"] = 97,
				["category"] = "vehicle",
				["unitName"] = "OSA-1-2",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1220102982056,
				["point"] = 
				{
					["y"] = -39185.408653722,
					["x"] = 44214.025946266,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39185.408653722,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44214.025946266,
				["unitId"] = 98,
				["category"] = "vehicle",
				["unitName"] = "OSA-1-3",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 21,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["OSA-1"]
	["Texaco 2"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40630.762474028,
				["x"] = 1981.8195031476,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["number"] = 6,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["number"] = 2,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = true,
											["callsign"] = "TX2",
											["modeChannel"] = "X",
											["channel"] = 32,
											["system"] = 4,
											["unitId"] = 103,
											["bearing"] = true,
											["frequency"] = 1119000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[8] = 
							{
								["number"] = 8,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [8]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 132000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "Tanker",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["speedEdited"] = true,
									["altitude"] = 7620,
									["pattern"] = "Race-Track",
									["speed"] = 207.09722222222,
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["number"] = 7,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41777.700142637,
				["x"] = 1997.4909834696,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 26,
		["groupName"] = "Texaco 2",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["point"] = 
				{
					["y"] = 40630.762474028,
					["x"] = 1981.8195031476,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "100th arw",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 207.09722222222,
				["type"] = "KC135MPRS",
				["unitId"] = 103,
				["country"] = "usa",
				["psi"] = -1.5571334176583,
				["unitName"] = "Texaco 2-1",
				["groupName"] = "Texaco 2",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = 1981.8195031476,
				["y"] = 40630.762474028,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 90700,
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5571334176583,
				["skill"] = "Excellent",
				["callsign"] = 
				{
					[1] = 1,
					[2] = 2,
					[3] = 1,
					["name"] = "Texaco21",
				}, -- end of ["callsign"]
				["groupId"] = 26,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "Refueling",
		["frequency"] = 132,
	}, -- end of ["Texaco 2"]
	["CVN-71 Theodore Roosevelt"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26664.209450934,
				["x"] = -42533.605825442,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = false,
											["callsign"] = "C71",
											["modeChannel"] = "X",
											["channel"] = 71,
											["system"] = 3,
											["unitId"] = 109,
											["bearing"] = true,
											["frequency"] = 1158000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateICLS",
										["params"] = 
										{
											["type"] = 131584,
											["unitId"] = 109,
											["channel"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27612.119381004,
				["x"] = -42514.020909531,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 32,
		["groupName"] = "CVN-71 Theodore Roosevelt",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "CVN_71",
				["point"] = 
				{
					["y"] = 26664.209450934,
					["x"] = -42533.605825442,
				}, -- end of ["point"]
				["groupId"] = 32,
				["y"] = 26664.209450934,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -42533.605825442,
				["unitId"] = 109,
				["category"] = "ship",
				["unitName"] = "CVN-71 Theodore Roosevelt",
				["heading"] = 1.5501381089852,
				["country"] = "usa",
				["groupName"] = "CVN-71 Theodore Roosevelt",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usa",
	}, -- end of ["CVN-71 Theodore Roosevelt"]
	["MIG-2"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41112.306796769,
				["x"] = 38266.254036752,
				["name"] = "",
				["speed"] = 220.97222222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 6,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["variantIndex"] = 2,
											["value"] = 4,
											["name"] = 5,
											["formationIndex"] = 4,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SMOKE_ON_OFF",
										["params"] = 
										{
											["value"] = true,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["key"] = "CAP",
								["id"] = "EngageTargets",
								["number"] = 1,
								["auto"] = true,
								["params"] = 
								{
									["targetTypes"] = 
									{
										[1] = "Air",
									}, -- end of ["targetTypes"]
									["priority"] = 0,
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 4,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 5,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 3,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 7,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 13,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 11,
		["groupName"] = "MIG-2",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "Air Force Standard",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 220.97222222222,
				["heading"] = 0,
				["type"] = "MiG-29A",
				["unitName"] = "MIG-2-1",
				["groupId"] = 11,
				["psi"] = 0,
				["coalition"] = "red",
				["groupName"] = "MIG-2",
				["y"] = -41112.306796769,
				["countryId"] = 0,
				["x"] = 38266.254036752,
				["unitId"] = 59,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 3376,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 103,
				["point"] = 
				{
					["y"] = -41112.306796769,
					["x"] = 38266.254036752,
				}, -- end of ["point"]
				["skill"] = "Average",
				["country"] = "russia",
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 7620,
				["point"] = 
				{
					["y"] = -41072.306796769,
					["x"] = 38226.254036752,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "Air Force Standard",
				["onboard_num"] = "011",
				["category"] = "plane",
				["speed"] = 220.97222222222,
				["type"] = "MiG-29A",
				["unitId"] = 60,
				["country"] = "russia",
				["psi"] = 0,
				["unitName"] = "MIG-2-2",
				["groupName"] = "MIG-2",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 38226.254036752,
				["y"] = -41072.306796769,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 3376,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["skill"] = "Average",
				["callsign"] = 104,
				["groupId"] = 11,
			}, -- end of [2]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["MIG-2"]
	["Shell 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40658.655795397,
				["x"] = -632.1831851798,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["number"] = 6,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["number"] = 2,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = true,
											["callsign"] = "SH1",
											["modeChannel"] = "X",
											["channel"] = 41,
											["system"] = 4,
											["unitId"] = 106,
											["bearing"] = true,
											["frequency"] = 1128000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[8] = 
							{
								["number"] = 8,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [8]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 141000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "Tanker",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["altitude"] = 7620,
									["speedEdited"] = true,
									["pattern"] = "Race-Track",
									["speed"] = 207.09722222222,
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["number"] = 7,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41804.808007762,
				["x"] = -643.38336966545,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 29,
		["groupName"] = "Shell 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["point"] = 
				{
					["y"] = 40658.655795397,
					["x"] = -632.1831851798,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "TurAF Standard",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 207.09722222222,
				["type"] = "KC-135",
				["unitId"] = 106,
				["country"] = "usa",
				["psi"] = -1.5805680027354,
				["unitName"] = "Shell 1-1",
				["groupName"] = "Shell 1",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -632.1831851798,
				["y"] = 40658.655795397,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 90700,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5805680027354,
				["skill"] = "Excellent",
				["callsign"] = 
				{
					[1] = 3,
					[2] = 1,
					[3] = 1,
					["name"] = "Shell11",
				}, -- end of ["callsign"]
				["groupId"] = 29,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "Refueling",
		["frequency"] = 141,
	}, -- end of ["Shell 1"]
	["BTR-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -42146.158413924,
				["x"] = 51970.798729267,
				["name"] = "",
				["speed"] = 5.5555555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 1,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["country"] = "russia",
		["groupName"] = "BTR-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -42146.158413924,
					["x"] = 51970.798729267,
				}, -- end of ["point"]
				["groupId"] = 1,
				["y"] = -42146.158413924,
				["coalition"] = "red",
				["groupName"] = "BTR-1",
				["type"] = "BTR-80",
				["countryId"] = 0,
				["x"] = 51970.798729267,
				["unitId"] = 1,
				["category"] = "vehicle",
				["unitName"] = "Ground-1-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -42087.310828923,
					["x"] = 51969.344356214,
				}, -- end of ["point"]
				["groupId"] = 1,
				["y"] = -42087.310828923,
				["coalition"] = "red",
				["groupName"] = "BTR-1",
				["type"] = "BTR-80",
				["countryId"] = 0,
				["x"] = 51969.344356214,
				["unitId"] = 2,
				["category"] = "vehicle",
				["unitName"] = "BTR-1-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -42146.434743784,
					["x"] = 51918.9374288,
				}, -- end of ["point"]
				["groupId"] = 1,
				["y"] = -42146.434743784,
				["coalition"] = "red",
				["groupName"] = "BTR-1",
				["type"] = "BTR-80",
				["countryId"] = 0,
				["x"] = 51918.9374288,
				["unitId"] = 3,
				["category"] = "vehicle",
				["unitName"] = "BTR-1-2",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -42088.637327012,
					["x"] = 51917.989930164,
				}, -- end of ["point"]
				["groupId"] = 1,
				["y"] = -42088.637327012,
				["coalition"] = "red",
				["groupName"] = "BTR-1",
				["type"] = "BTR-80",
				["countryId"] = 0,
				["x"] = 51917.989930164,
				["unitId"] = 4,
				["category"] = "vehicle",
				["unitName"] = "BTR-1-3",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 1,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["BTR-1"]
	["Shell 22"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 3048,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40642.716754615,
				["x"] = -1182.0800921755,
				["name"] = "",
				["speed"] = 131.55555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["number"] = 6,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["number"] = 2,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = true,
											["callsign"] = "SH2",
											["modeChannel"] = "X",
											["channel"] = 42,
											["system"] = 4,
											["unitId"] = 107,
											["bearing"] = true,
											["frequency"] = 1129000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[8] = 
							{
								["number"] = 8,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [8]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 142000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "Tanker",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["speedEdited"] = true,
									["altitude"] = 3048,
									["pattern"] = "Race-Track",
									["speed"] = 131.55555555556,
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["number"] = 7,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 3048,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41788.868966979,
				["x"] = -1193.2802766612,
				["name"] = "",
				["speed"] = 131.55555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 30,
		["groupName"] = "Shell 2",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 3048,
				["point"] = 
				{
					["y"] = 40642.716754615,
					["x"] = -1182.0800921755,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "TurAF Standard",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 131.55555555556,
				["type"] = "KC-135",
				["unitId"] = 107,
				["country"] = "usa",
				["psi"] = -1.5805680027355,
				["unitName"] = "Shell 2-1",
				["groupName"] = "Shell 2",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -1182.0800921755,
				["y"] = 40642.716754615,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 90700,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5805680027355,
				["skill"] = "Excellent",
				["callsign"] = 
				{
					[1] = 3,
					[2] = 2,
					[3] = 1,
					["name"] = "Shell21",
				}, -- end of ["callsign"]
				["groupId"] = 30,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "Refueling",
		["frequency"] = 142,
	}, -- end of ["Shell 2"]
	["D9-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 3048,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40883.003097888,
				["x"] = 34823.688822419,
				["name"] = "",
				["speed"] = 154.16666666667,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["key"] = "CAP",
								["id"] = "EngageTargets",
								["enabled"] = true,
								["auto"] = true,
								["params"] = 
								{
									["targetTypes"] = 
									{
										[1] = "Air",
									}, -- end of ["targetTypes"]
									["priority"] = 0,
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 4,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["variantIndex"] = 1,
											["value"] = 131073,
											["name"] = 5,
											["formationIndex"] = 2,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 12,
		["groupName"] = "D9-1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 3048,
				["point"] = 
				{
					["y"] = -40883.003097888,
					["x"] = 34823.688822419,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "FW-190D9_13.JG 51_Heinz Marquardt",
				["onboard_num"] = "012",
				["category"] = "plane",
				["speed"] = 154.16666666667,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["type"] = "FW-190D9",
				["unitId"] = 61,
				["country"] = "russia",
				["psi"] = 0,
				["unitName"] = "Aerial-1-2",
				["groupName"] = "D9-1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 34823.688822419,
				["y"] = -40883.003097888,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 388,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["callsign"] = 106,
				["skill"] = "Average",
				["groupId"] = 12,
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 3048,
				["point"] = 
				{
					["y"] = -40843.003097888,
					["x"] = 34783.688822419,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "FW-190D9_13.JG 51_Heinz Marquardt",
				["onboard_num"] = "013",
				["category"] = "plane",
				["speed"] = 154.16666666667,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["type"] = "FW-190D9",
				["unitId"] = 62,
				["country"] = "russia",
				["psi"] = 0,
				["unitName"] = "D0-1-1",
				["groupName"] = "D9-1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 34783.688822419,
				["y"] = -40843.003097888,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 388,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["callsign"] = 105,
				["skill"] = "Average",
				["groupId"] = 12,
			}, -- end of [2]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 38.4,
	}, -- end of ["D9-1"]
	["Texaco 3"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40657.681694072,
				["x"] = 1605.4845264719,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["number"] = 6,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["number"] = 2,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = true,
											["callsign"] = "TX3",
											["modeChannel"] = "X",
											["channel"] = 33,
											["system"] = 4,
											["unitId"] = 104,
											["bearing"] = true,
											["frequency"] = 1120000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[8] = 
							{
								["number"] = 8,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [8]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 133000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "Tanker",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["speedEdited"] = true,
									["altitude"] = 7620,
									["pattern"] = "Race-Track",
									["speed"] = 207.09722222222,
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["number"] = 7,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41803.833906437,
				["x"] = 1594.2843419863,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 27,
		["groupName"] = "Texaco 3",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["point"] = 
				{
					["y"] = 40657.681694072,
					["x"] = 1605.4845264719,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "usaf standard",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 207.09722222222,
				["type"] = "S-3B Tanker",
				["unitId"] = 104,
				["country"] = "usa",
				["psi"] = -1.5805680027354,
				["unitName"] = "Texaco 3-1",
				["groupName"] = "Texaco 3",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = 1605.4845264719,
				["y"] = 40657.681694072,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "7813",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5805680027354,
				["skill"] = "Excellent",
				["callsign"] = 
				{
					[1] = 1,
					[2] = 3,
					[3] = 1,
					["name"] = "Texaco31",
				}, -- end of ["callsign"]
				["groupId"] = 27,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "Refueling",
		["frequency"] = 133,
	}, -- end of ["Texaco 3"]
	["A-50 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 10668,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41180.151605509,
				["x"] = 19371.966426135,
				["name"] = "",
				["speed"] = 118.19444444444,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["altitude"] = 10668,
									["altitudeEdited"] = true,
									["pattern"] = "Circle",
									["speed"] = 118.05555555556,
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "AWACS",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 275000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 16,
		["groupName"] = "A-50 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 10668,
				["point"] = 
				{
					["y"] = -41180.151605509,
					["x"] = 19371.966426135,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "RF Air Force",
				["onboard_num"] = "051",
				["category"] = "plane",
				["speed"] = 118.19444444444,
				["type"] = "A-50",
				["unitId"] = 84,
				["country"] = "russia",
				["psi"] = 0,
				["unitName"] = "Aerial-1-3",
				["groupName"] = "A-50 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 19371.966426135,
				["y"] = -41180.151605509,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "70000",
					["flare"] = 192,
					["chaff"] = 192,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["skill"] = "Excellent",
				["callsign"] = 109,
				["groupId"] = 16,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "AWACS",
		["frequency"] = 275,
	}, -- end of ["A-50 1"]
	["Infantry-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -40674.999142554,
				["x"] = 59576.159507237,
				["name"] = "",
				["speed"] = 4,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 14,
		["groupName"] = "Infantry-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40674.999142554,
					["x"] = 59576.159507237,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40674.999142554,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper RPG-16",
				["countryId"] = 0,
				["x"] = 59576.159507237,
				["unitId"] = 73,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40674.713667123,
					["x"] = 59561.822013807,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40674.713667123,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59561.822013807,
				["unitId"] = 74,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40674.597183756,
					["x"] = 59543.184675087,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40674.597183756,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59543.184675087,
				["unitId"] = 75,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40673.781800187,
					["x"] = 59520.470418517,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40673.781800187,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59520.470418517,
				["unitId"] = 76,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40682.751019449,
					["x"] = 59531.885788487,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40682.751019449,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59531.885788487,
				["unitId"] = 77,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40682.168602614,
					["x"] = 59551.687960877,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40682.168602614,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper RPG-16",
				["countryId"] = 0,
				["x"] = 59551.687960877,
				["unitId"] = 78,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-6",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
			[7] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40681.702669146,
					["x"] = 59569.626399407,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40681.702669146,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper RPG-16",
				["countryId"] = 0,
				["x"] = 59569.626399407,
				["unitId"] = 79,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [7]
			[8] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40664.812580925,
					["x"] = 59531.536338377,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40664.812580925,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59531.536338377,
				["unitId"] = 80,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [8]
			[9] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40665.627964494,
					["x"] = 59552.736311187,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40665.627964494,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59552.736311187,
				["unitId"] = 81,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-9",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [9]
			[10] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40667.025764899,
					["x"] = 59569.859366137,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40667.025764899,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59569.859366137,
				["unitId"] = 82,
				["category"] = "vehicle",
				["unitName"] = "Infantry 1-A",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [10]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "vehicle",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Infantry-1"]
	["FUEL-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -40559.316396896,
				["x"] = 53413.382381111,
				["name"] = "",
				["speed"] = 5.5555555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 1,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["country"] = "russia",
		["groupName"] = "FUEL-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40559.316396896,
					["x"] = 53413.382381111,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40559.316396896,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53413.382381111,
				["unitId"] = 13,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40500.468811895,
					["x"] = 53411.928008059,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40500.468811895,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53411.928008059,
				["unitId"] = 14,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-6",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40559.592726757,
					["x"] = 53361.521080645,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40559.592726757,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53361.521080645,
				["unitId"] = 15,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40501.795309985,
					["x"] = 53360.573582009,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40501.795309985,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53360.573582009,
				["unitId"] = 16,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 4,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["FUEL-1"]
	["CVN-75 Harry S. Truman"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26675.960400481,
				["x"] = -43704.783796892,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = false,
											["callsign"] = "C75",
											["modeChannel"] = "X",
											["channel"] = 75,
											["system"] = 3,
											["unitId"] = 112,
											["bearing"] = true,
											["frequency"] = 1162000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateICLS",
										["params"] = 
										{
											["type"] = 131584,
											["unitId"] = 112,
											["channel"] = 5,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27623.87033055,
				["x"] = -43685.198880981,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 35,
		["groupName"] = "CVN-75 Harry S. Truman",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "CVN_75",
				["point"] = 
				{
					["y"] = 26675.960400481,
					["x"] = -43704.783796892,
				}, -- end of ["point"]
				["groupId"] = 35,
				["y"] = 26675.960400481,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -43704.783796892,
				["unitId"] = 112,
				["category"] = "ship",
				["unitName"] = "CVN-75 Harry S. Truman",
				["heading"] = 1.5501381089852,
				["country"] = "usa",
				["groupName"] = "CVN-75 Harry S. Truman",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usa",
	}, -- end of ["CVN-75 Harry S. Truman"]
	["CV 1143.5 Admiral Kuznetsov(2017)"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26635.848145169,
				["x"] = -44637.917481628,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27652.178588416,
				["x"] = -44619.522360483,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 36,
		["groupName"] = "CV 1143.5 Admiral Kuznetsov(2017)",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "CV_1143_5",
				["point"] = 
				{
					["y"] = 26635.848145169,
					["x"] = -44637.917481628,
				}, -- end of ["point"]
				["groupId"] = 36,
				["y"] = 26635.848145169,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 7,
				["x"] = -44637.917481628,
				["unitId"] = 113,
				["category"] = "ship",
				["unitName"] = "CV 1143.5 Admiral Kuznetsov(2017)",
				["heading"] = 1.552698755327,
				["country"] = "usaf aggressors",
				["groupName"] = "CV 1143.5 Admiral Kuznetsov(2017)",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 7,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usaf aggressors",
	}, -- end of ["CV 1143.5 Admiral Kuznetsov(2017)"]
	["Hind-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 500,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41120.721903985,
				["x"] = 28910.433520764,
				["name"] = "",
				["speed"] = 46.25,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["key"] = "CAS",
								["id"] = "EngageTargets",
								["enabled"] = true,
								["auto"] = true,
								["params"] = 
								{
									["targetTypes"] = 
									{
										[1] = "Helicopters",
										[2] = "Ground Units",
										[3] = "Light armed ships",
									}, -- end of ["targetTypes"]
									["priority"] = 0,
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 4,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 15,
		["groupName"] = "Hind-1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 500,
				["point"] = 
				{
					["y"] = -41120.721903985,
					["x"] = 28910.433520764,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "Algerian AF Black",
				["onboard_num"] = "050",
				["category"] = "helicopter",
				["speed"] = 46.25,
				["type"] = "Mi-24V",
				["unitId"] = 83,
				["country"] = "russia",
				["psi"] = 0,
				["unitName"] = "Rotary-1-1",
				["groupName"] = "Hind-1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 28910.433520764,
				["y"] = -41120.721903985,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "1704",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["skill"] = "Average",
				["callsign"] = 107,
				["groupId"] = 15,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "helicopter",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAS",
		["frequency"] = 127.5,
	}, -- end of ["Hind-1"]
	["LHA-1 Tarawa"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26654.243266314,
				["x"] = -44168.841892437,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = false,
											["callsign"] = "LHA",
											["modeChannel"] = "X",
											["channel"] = 76,
											["system"] = 3,
											["unitId"] = 115,
											["bearing"] = true,
											["frequency"] = 1163000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateICLS",
										["params"] = 
										{
											["type"] = 131584,
											["unitId"] = 115,
											["channel"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27675.172489847,
				["x"] = -44145.847991006,
				["name"] = "",
				["speed"] = 13.88888,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 38,
		["groupName"] = "LHA-1 Tarawa",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "LHA_Tarawa",
				["point"] = 
				{
					["y"] = 26654.243266314,
					["x"] = -44168.841892437,
				}, -- end of ["point"]
				["groupId"] = 38,
				["y"] = 26654.243266314,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -44168.841892437,
				["unitId"] = 115,
				["category"] = "ship",
				["unitName"] = "LHA-1 Tarawa",
				["heading"] = 1.5482776114021,
				["country"] = "usa",
				["groupName"] = "LHA-1 Tarawa",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usa",
	}, -- end of ["LHA-1 Tarawa"]
	["MIG-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40968.048431585,
				["x"] = 40646.517062294,
				["name"] = "",
				["speed"] = 220.97222222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 6,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["variantIndex"] = 2,
											["value"] = 4,
											["name"] = 5,
											["formationIndex"] = 4,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SMOKE_ON_OFF",
										["params"] = 
										{
											["value"] = true,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["key"] = "CAP",
								["id"] = "EngageTargets",
								["number"] = 1,
								["auto"] = true,
								["params"] = 
								{
									["targetTypes"] = 
									{
										[1] = "Air",
									}, -- end of ["targetTypes"]
									["priority"] = 0,
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 4,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 5,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 3,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 7,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 13,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 10,
		["groupName"] = "MIG-1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "Air Force Standard",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 220.97222222222,
				["heading"] = 0,
				["type"] = "MiG-29A",
				["unitName"] = "Aerial-1-1",
				["groupId"] = 10,
				["psi"] = 0,
				["coalition"] = "red",
				["groupName"] = "MIG-1",
				["y"] = -40968.048431585,
				["countryId"] = 0,
				["x"] = 40646.517062294,
				["unitId"] = 57,
				["payload"] = 
				{
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3376,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 103,
				["point"] = 
				{
					["y"] = -40968.048431585,
					["x"] = 40646.517062294,
				}, -- end of ["point"]
				["skill"] = "Average",
				["country"] = "russia",
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 7620,
				["point"] = 
				{
					["y"] = -40928.048431585,
					["x"] = 40606.517062294,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "Air Force Standard",
				["onboard_num"] = "011",
				["category"] = "plane",
				["speed"] = 220.97222222222,
				["type"] = "MiG-29A",
				["unitId"] = 58,
				["country"] = "russia",
				["psi"] = 0,
				["unitName"] = "MIG-1-1",
				["groupName"] = "MIG-1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 40606.517062294,
				["y"] = -40928.048431585,
				["payload"] = 
				{
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3376,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["skill"] = "Average",
				["callsign"] = 104,
				["groupId"] = 10,
			}, -- end of [2]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["MIG-1"]
	["Kirov-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -69223.674784888,
				["x"] = -3239.163254206,
				["name"] = "",
				["speed"] = 0,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 20,
		["groupName"] = "Kirov-1",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "PIOTR",
				["point"] = 
				{
					["y"] = -69223.674784888,
					["x"] = -3239.163254206,
				}, -- end of ["point"]
				["groupId"] = 20,
				["y"] = -69223.674784888,
				["skill"] = "Average",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = -3239.163254206,
				["unitId"] = 94,
				["category"] = "ship",
				["unitName"] = "Kirov 1",
				["heading"] = 0,
				["country"] = "russia",
				["groupName"] = "Kirov-1",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Kirov-1"]
	["KUB-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -39398.079284827,
				["x"] = 47479.86736665,
				["name"] = "",
				["speed"] = 0,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 7,
		["groupName"] = "KUB-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 4.1932428661415,
				["point"] = 
				{
					["y"] = -39398.079284827,
					["x"] = 47479.86736665,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39398.079284827,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 1S91 str",
				["countryId"] = 0,
				["x"] = 47479.86736665,
				["unitId"] = 41,
				["category"] = "vehicle",
				["unitName"] = "Straight Flush Radar 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 4.1932428661415,
				["point"] = 
				{
					["y"] = -39051.399775218,
					["x"] = 47395.041529193,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39051.399775218,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47395.041529193,
				["unitId"] = 42,
				["category"] = "vehicle",
				["unitName"] = "KUB Launcher 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 4.1932428661415,
				["point"] = 
				{
					["y"] = -39061.234654924,
					["x"] = 47243.830253725,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39061.234654924,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47243.830253725,
				["unitId"] = 43,
				["category"] = "vehicle",
				["unitName"] = "KUB Launcher 2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 4.1932428661415,
				["point"] = 
				{
					["y"] = -39409.143524495,
					["x"] = 47262.270653172,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39409.143524495,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47262.270653172,
				["unitId"] = 44,
				["category"] = "vehicle",
				["unitName"] = "KUB Launcher 3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 4.1932428661415,
				["point"] = 
				{
					["y"] = -39253.014809175,
					["x"] = 47156.545696341,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39253.014809175,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47156.545696341,
				["unitId"] = 45,
				["category"] = "vehicle",
				["unitName"] = "KUB Launcher 4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 4.1932428661415,
				["point"] = 
				{
					["y"] = -39163.214319335,
					["x"] = 47528.892956055,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39163.214319335,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "p-19 s-125 sr",
				["countryId"] = 0,
				["x"] = 47528.892956055,
				["unitId"] = 46,
				["category"] = "vehicle",
				["unitName"] = "P-19 EWR 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "vehicle",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["KUB-1"]
	["Texaco 4"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40650.686275006,
				["x"] = 1141.0351018716,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["number"] = 6,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 134000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["altitude"] = 7620,
									["speedEdited"] = true,
									["pattern"] = "Race-Track",
									["speed"] = 207.09722222222,
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "Tanker",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["number"] = 7,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 7620,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41822.728008783,
				["x"] = 1130.9821476158,
				["name"] = "",
				["speed"] = 207.09722222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "ukraine",
		["uncontrolled"] = false,
		["groupId"] = 28,
		["groupName"] = "Texaco 4",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 7620,
				["point"] = 
				{
					["y"] = 40650.686275006,
					["x"] = 1141.0351018716,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "Algerian AF IL-78M",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 207.09722222222,
				["type"] = "IL-78M",
				["unitId"] = 105,
				["country"] = "ukraine",
				["psi"] = -1.5793734170509,
				["unitName"] = "Texaco 4-1",
				["groupName"] = "Texaco 4",
				["coalition"] = "blue",
				["countryId"] = 1,
				["x"] = 1141.0351018716,
				["y"] = 40650.686275006,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "90000",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5793734170509,
				["skill"] = "Excellent",
				["callsign"] = 134,
				["groupId"] = 28,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 1,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "Refueling",
		["frequency"] = 134,
	}, -- end of ["Texaco 4"]
	["Texaco 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 4572,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40642.748114758,
				["x"] = 2389.4974404673,
				["name"] = "",
				["speed"] = 172.5,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["number"] = 6,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = true,
											["callsign"] = "TX1",
											["modeChannel"] = "X",
											["channel"] = 31,
											["system"] = 4,
											["unitId"] = 101,
											["bearing"] = true,
											["frequency"] = 1118000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[8] = 
							{
								["number"] = 8,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [8]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 131000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "Tanker",
								["number"] = 1,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "Orbit",
								["enabled"] = true,
								["params"] = 
								{
									["altitude"] = 4572,
									["speedEdited"] = true,
									["pattern"] = "Race-Track",
									["speed"] = 172.66666666667,
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["number"] = 7,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 4572,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41807.355752589,
				["x"] = 2362.011721487,
				["name"] = "",
				["speed"] = 172.5,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 24,
		["groupName"] = "Texaco 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 4572,
				["point"] = 
				{
					["y"] = 40642.748114758,
					["x"] = 2389.4974404673,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "default",
				["onboard_num"] = "010",
				["category"] = "plane",
				["speed"] = 172.5,
				["type"] = "KC130",
				["unitId"] = 101,
				["country"] = "usa",
				["psi"] = -1.5943927867645,
				["unitName"] = "Texaco 1-1",
				["groupName"] = "Texaco 1",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = 2389.4974404673,
				["y"] = 40642.748114758,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 30000,
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5943927867645,
				["skill"] = "Excellent",
				["callsign"] = 
				{
					[1] = 1,
					[2] = 1,
					[3] = 1,
					["name"] = "Texaco11",
				}, -- end of ["callsign"]
				["groupId"] = 24,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "Refueling",
		["frequency"] = 131,
	}, -- end of ["Texaco 1"]
	["E-2D 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 9144,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 40115.792024724,
				["x"] = 7974.6061566262,
				["name"] = "",
				["speed"] = 118.19444444444,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 6,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "EPLRS",
										["params"] = 
										{
											["value"] = true,
											["groupId"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "AWACS",
								["number"] = 1,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 4,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 3,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 5,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 7,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 152000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 22,
		["groupName"] = "E-2D 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 9144,
				["point"] = 
				{
					["y"] = 40115.792024724,
					["x"] = 7974.6061566262,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "E-2D Demo",
				["onboard_num"] = "052",
				["category"] = "plane",
				["speed"] = 118.19444444444,
				["type"] = "E-2C",
				["unitId"] = 99,
				["country"] = "usa",
				["psi"] = 0,
				["unitName"] = "Magic",
				["groupName"] = "E-2D 1",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = 7974.6061566262,
				["y"] = 40115.792024724,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "5624",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["skill"] = "High",
				["callsign"] = 
				{
					[1] = 2,
					[2] = 1,
					[3] = 1,
					["name"] = "Magic11",
				}, -- end of ["callsign"]
				["groupId"] = 22,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "AWACS",
		["frequency"] = 152,
	}, -- end of ["E-2D 1"]
	["T72-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -40799.747005537,
				["x"] = 50480.128955695,
				["name"] = "",
				["speed"] = 5.5555555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 1,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 2,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["country"] = "russia",
		["groupName"] = "T72-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40799.747005537,
					["x"] = 50480.128955695,
				}, -- end of ["point"]
				["groupId"] = 2,
				["y"] = -40799.747005537,
				["coalition"] = "red",
				["groupName"] = "T72-1",
				["type"] = "T-72B",
				["countryId"] = 0,
				["x"] = 50480.128955695,
				["unitId"] = 5,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40740.899420536,
					["x"] = 50478.674582642,
				}, -- end of ["point"]
				["groupId"] = 2,
				["y"] = -40740.899420536,
				["coalition"] = "red",
				["groupName"] = "T72-1",
				["type"] = "T-72B",
				["countryId"] = 0,
				["x"] = 50478.674582642,
				["unitId"] = 6,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-2",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40800.023335397,
					["x"] = 50428.267655228,
				}, -- end of ["point"]
				["groupId"] = 2,
				["y"] = -40800.023335397,
				["coalition"] = "red",
				["groupName"] = "T72-1",
				["type"] = "T-72B",
				["countryId"] = 0,
				["x"] = 50428.267655228,
				["unitId"] = 7,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-3",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40742.225918626,
					["x"] = 50427.320156593,
				}, -- end of ["point"]
				["groupId"] = 2,
				["y"] = -40742.225918626,
				["coalition"] = "red",
				["groupName"] = "T72-1",
				["type"] = "T-72B",
				["countryId"] = 0,
				["x"] = 50427.320156593,
				["unitId"] = 8,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-4",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 2,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["T72-1"]
	["CVN-74 John C. Stennis"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26640.707551842,
				["x"] = -43399.259108687,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = false,
											["callsign"] = "C74",
											["modeChannel"] = "X",
											["channel"] = 74,
											["system"] = 3,
											["unitId"] = 108,
											["bearing"] = true,
											["frequency"] = 1161000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateICLS",
										["params"] = 
										{
											["type"] = 131584,
											["unitId"] = 108,
											["channel"] = 4,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27659.123179189,
				["x"] = -43387.508159141,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 31,
		["groupName"] = "CVN-74 John C. Stennis",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "Stennis",
				["point"] = 
				{
					["y"] = 26640.707551842,
					["x"] = -43399.259108687,
				}, -- end of ["point"]
				["groupId"] = 31,
				["y"] = 26640.707551842,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -43399.259108687,
				["unitId"] = 108,
				["category"] = "ship",
				["unitName"] = "CVN-74 John Cena",
				["heading"] = 1.5592583772777,
				["country"] = "usa",
				["groupName"] = "CVN-74 John C. Stennis",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usa",
	}, -- end of ["CVN-74 John C. Stennis"]
	["CV 1143.5 Admiral Kuznetsov"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26635.848145169,
				["x"] = -44909.245518512,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27652.178588416,
				["x"] = -44890.850397368,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 37,
		["groupName"] = "CV 1143.5 Admiral Kuznetsov",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "KUZNECOW",
				["point"] = 
				{
					["y"] = 26635.848145169,
					["x"] = -44909.245518512,
				}, -- end of ["point"]
				["groupId"] = 37,
				["y"] = 26635.848145169,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 7,
				["x"] = -44909.245518512,
				["unitId"] = 114,
				["category"] = "ship",
				["unitName"] = "CV 1143.5 Admiral Kuznetsov",
				["heading"] = 1.552698755328,
				["country"] = "usaf aggressors",
				["groupName"] = "CV 1143.5 Admiral Kuznetsov",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 7,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usaf aggressors",
	}, -- end of ["CV 1143.5 Admiral Kuznetsov"]
	["ZU-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -41941.251765432,
				["x"] = 44510.914877979,
				["name"] = "",
				["speed"] = 0,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 9,
		["groupName"] = "ZU-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41941.251765432,
					["x"] = 44510.914877979,
				}, -- end of ["point"]
				["groupId"] = 9,
				["y"] = -41941.251765432,
				["coalition"] = "red",
				["groupName"] = "ZU-1",
				["type"] = "ZU-23 Emplacement Closed",
				["countryId"] = 0,
				["x"] = 44510.914877979,
				["unitId"] = 53,
				["category"] = "vehicle",
				["unitName"] = "ZU 1-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41941.251765432,
					["x"] = 44470.914877979,
				}, -- end of ["point"]
				["groupId"] = 9,
				["y"] = -41941.251765432,
				["coalition"] = "red",
				["groupName"] = "ZU-1",
				["type"] = "ZU-23 Emplacement",
				["countryId"] = 0,
				["x"] = 44470.914877979,
				["unitId"] = 54,
				["category"] = "vehicle",
				["unitName"] = "ZU 1-2",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41898.698935426,
					["x"] = 44512.110182199,
				}, -- end of ["point"]
				["groupId"] = 9,
				["y"] = -41898.698935426,
				["coalition"] = "red",
				["groupName"] = "ZU-1",
				["type"] = "Ural-375 ZU-23",
				["countryId"] = 0,
				["x"] = 44512.110182199,
				["unitId"] = 55,
				["category"] = "vehicle",
				["unitName"] = "ZU 1-3",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41896.786448684,
					["x"] = 44470.274534719,
				}, -- end of ["point"]
				["groupId"] = 9,
				["y"] = -41896.786448684,
				["coalition"] = "red",
				["groupName"] = "ZU-1",
				["type"] = "ZSU-23-4 Shilka",
				["countryId"] = 0,
				["x"] = 44470.274534719,
				["unitId"] = 56,
				["category"] = "vehicle",
				["unitName"] = "ZU 1-4",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "vehicle",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["ZU-1"]
	["CVN-72 Abraham Lincoln"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26648.541518206,
				["x"] = -42823.462580918,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = false,
											["callsign"] = "C72",
											["modeChannel"] = "X",
											["channel"] = 72,
											["system"] = 3,
											["unitId"] = 110,
											["bearing"] = true,
											["frequency"] = 1159000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateICLS",
										["params"] = 
										{
											["type"] = 131584,
											["unitId"] = 110,
											["channel"] = 2,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27596.451448276,
				["x"] = -42823.462580918,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 33,
		["groupName"] = "CVN-72 Abraham Lincoln",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "CVN_72",
				["point"] = 
				{
					["y"] = 26648.541518206,
					["x"] = -42823.462580918,
				}, -- end of ["point"]
				["groupId"] = 33,
				["y"] = 26648.541518206,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -42823.462580918,
				["unitId"] = 110,
				["category"] = "ship",
				["unitName"] = "CVN-72 Abraham Lincoln",
				["heading"] = 1.5707963267949,
				["country"] = "usa",
				["groupName"] = "CVN-72 Abraham Lincoln",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usa",
	}, -- end of ["CVN-72 Abraham Lincoln"]
	["Cargo-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -67767.477899429,
				["x"] = -1209.5416884632,
				["name"] = "",
				["speed"] = 5.5555555555556,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 18,
		["groupName"] = "Cargo-1",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "Dry-cargo ship-2",
				["point"] = 
				{
					["y"] = -67767.477899429,
					["x"] = -1209.5416884632,
				}, -- end of ["point"]
				["groupId"] = 18,
				["y"] = -67767.477899429,
				["skill"] = "Average",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = -1209.5416884632,
				["unitId"] = 89,
				["category"] = "ship",
				["unitName"] = "Naval-2-1",
				["heading"] = 0,
				["country"] = "russia",
				["groupName"] = "Cargo-1",
			}, -- end of [1]
			[2] = 
			{
				["type"] = "Dry-cargo ship-2",
				["point"] = 
				{
					["y"] = -67287.005775511,
					["x"] = -1214.8959060232,
				}, -- end of ["point"]
				["groupId"] = 18,
				["y"] = -67287.005775511,
				["skill"] = "Average",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = -1214.8959060232,
				["unitId"] = 90,
				["category"] = "ship",
				["unitName"] = "Naval-2-2",
				["heading"] = 0,
				["country"] = "russia",
				["groupName"] = "Cargo-1",
			}, -- end of [2]
			[3] = 
			{
				["type"] = "Dry-cargo ship-2",
				["point"] = 
				{
					["y"] = -67787.583199463,
					["x"] = -1715.4733299832,
				}, -- end of ["point"]
				["groupId"] = 18,
				["y"] = -67787.583199463,
				["skill"] = "Average",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = -1715.4733299832,
				["unitId"] = 91,
				["category"] = "ship",
				["unitName"] = "Naval-2-3",
				["heading"] = 0,
				["country"] = "russia",
				["groupName"] = "Cargo-1",
			}, -- end of [3]
			[4] = 
			{
				["type"] = "Dry-cargo ship-2",
				["point"] = 
				{
					["y"] = -67254.000670635,
					["x"] = -1720.9741807932,
				}, -- end of ["point"]
				["groupId"] = 18,
				["y"] = -67254.000670635,
				["skill"] = "Average",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = -1720.9741807932,
				["unitId"] = 92,
				["category"] = "ship",
				["unitName"] = "Naval-2-4",
				["heading"] = 0,
				["country"] = "russia",
				["groupName"] = "Cargo-1",
			}, -- end of [4]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Cargo-1"]
	["CVN-73 George Washington"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 26640.707551842,
				["x"] = -43136.821235486,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateBeacon",
										["params"] = 
										{
											["type"] = 4,
											["AA"] = false,
											["callsign"] = "C73",
											["modeChannel"] = "X",
											["channel"] = 73,
											["system"] = 3,
											["unitId"] = 111,
											["bearing"] = true,
											["frequency"] = 1160000000,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = false,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["number"] = 5,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "ActivateICLS",
										["params"] = 
										{
											["type"] = 131584,
											["unitId"] = 111,
											["channel"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
			[2] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 27600.368431458,
				["x"] = -43093.734420483,
				["name"] = "",
				["speed"] = 10.277777777778,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [2]
		}, -- end of ["route"]
		["groupId"] = 34,
		["groupName"] = "CVN-73 George Washington",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "CVN_73",
				["point"] = 
				{
					["y"] = 26640.707551842,
					["x"] = -43136.821235486,
				}, -- end of ["point"]
				["groupId"] = 34,
				["y"] = 26640.707551842,
				["skill"] = "Excellent",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = -43136.821235486,
				["unitId"] = 111,
				["category"] = "ship",
				["unitName"] = "CVN-73 George Washington",
				["heading"] = 1.5259285000103,
				["country"] = "usa",
				["groupName"] = "CVN-73 George Washington",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "blue",
		["country"] = "usa",
	}, -- end of ["CVN-73 George Washington"]
	["Grumble-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 50,
				["type"] = "Turning Point",
				["action"] = "Off Road",
				["alt_type"] = "BARO",
				["form"] = "Off Road",
				["y"] = -41969.28953617,
				["x"] = 47524.204794174,
				["name"] = "",
				["speed"] = 0,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["name"] = 8,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[4] = 
							{
								["number"] = 4,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 20,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 2,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 6,
		["groupName"] = "Grumble-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41969.28953617,
					["x"] = 47524.204794174,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41969.28953617,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 54K6 cp",
				["countryId"] = 0,
				["x"] = 47524.204794174,
				["unitId"] = 29,
				["category"] = "vehicle",
				["unitName"] = "S-300 Command Post 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41871.677629791,
					["x"] = 47525.614535901,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41871.677629791,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 64H6E sr",
				["countryId"] = 0,
				["x"] = 47525.614535901,
				["unitId"] = 30,
				["category"] = "vehicle",
				["unitName"] = "S-300 Big Bird EWR 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41763.376087834,
					["x"] = 47163.728895703,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41763.376087834,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 40B6MD sr",
				["countryId"] = 0,
				["x"] = 47163.728895703,
				["unitId"] = 31,
				["category"] = "vehicle",
				["unitName"] = "S-300 Clamshell TAR 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41889.507761698,
					["x"] = 47164.389270959,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41889.507761698,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 40B6M tr",
				["countryId"] = 0,
				["x"] = 47164.389270959,
				["unitId"] = 32,
				["category"] = "vehicle",
				["unitName"] = "S-300 Flap Lid TER 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41959.507538817,
					["x"] = 47412.690367153,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41959.507538817,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47412.690367153,
				["unitId"] = 33,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41970.733918166,
					["x"] = 47369.765975524,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41970.733918166,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47369.765975524,
				["unitId"] = 34,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
			[7] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41958.186788305,
					["x"] = 47320.898206592,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41958.186788305,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47320.898206592,
				["unitId"] = 35,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [7]
			[8] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41937.054780119,
					["x"] = 47261.464433567,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41937.054780119,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47261.464433567,
				["unitId"] = 36,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [8]
			[9] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41803.65897844,
					["x"] = 47415.992243432,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41803.65897844,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47415.992243432,
				["unitId"] = 37,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [9]
			[10] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41795.074100114,
					["x"] = 47368.445225012,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41795.074100114,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47368.445225012,
				["unitId"] = 38,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 6",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [10]
			[11] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41799.696726905,
					["x"] = 47319.57745608,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41799.696726905,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47319.57745608,
				["unitId"] = 39,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [11]
			[12] = 
			{
				["heading"] = 3.0484053918209,
				["point"] = 
				{
					["y"] = -41783.847720765,
					["x"] = 47266.087060358,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41783.847720765,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47266.087060358,
				["unitId"] = 40,
				["category"] = "vehicle",
				["unitName"] = "S-300 Launcher 8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [12]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "vehicle",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Grumble-1"]
	["E-3A 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 9400.032,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = 41809.635863143,
				["x"] = 7297.9531350121,
				["name"] = "",
				["speed"] = 220.97222222222,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[6] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 6,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 0,
											["name"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [6]
							[2] = 
							{
								["number"] = 2,
								["auto"] = true,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "EPLRS",
										["params"] = 
										{
											["value"] = true,
											["groupId"] = 2,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 3,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["number"] = 1,
								["auto"] = true,
								["id"] = "AWACS",
								["enabled"] = true,
								["params"] = 
								{
								}, -- end of ["params"]
							}, -- end of [1]
							[4] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 4,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 3,
											["name"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [4]
							[5] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 5,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = true,
											["name"] = 6,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [5]
							[7] = 
							{
								["enabled"] = true,
								["auto"] = false,
								["id"] = "WrappedAction",
								["number"] = 7,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "SetFrequency",
										["params"] = 
										{
											["frequency"] = 151000000,
											["modulation"] = 0,
											["power"] = 10,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [7]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["modulation"] = 0,
		["country"] = "usa",
		["uncontrolled"] = false,
		["groupId"] = 23,
		["groupName"] = "E-3A 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 9400.032,
				["point"] = 
				{
					["y"] = 41809.635863143,
					["x"] = 7297.9531350121,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "nato",
				["onboard_num"] = "052",
				["category"] = "plane",
				["speed"] = 220.97222222222,
				["type"] = "E-3A",
				["unitId"] = 100,
				["country"] = "usa",
				["psi"] = 0,
				["unitName"] = "Overlord",
				["groupName"] = "E-3A 1",
				["coalition"] = "blue",
				["countryId"] = 2,
				["x"] = 7297.9531350121,
				["y"] = 41809.635863143,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "65000",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 0,
				["skill"] = "High",
				["callsign"] = 
				{
					[1] = 1,
					[2] = 1,
					[3] = 1,
					["name"] = "Overlord11",
				}, -- end of ["callsign"]
				["groupId"] = 23,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 2,
		["radioSet"] = true,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "blue",
		["startTime"] = 0,
		["task"] = "AWACS",
		["frequency"] = 151,
	}, -- end of ["E-3A 1"]
	["Kuznetsov-1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 0,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -69284.035277549,
				["x"] = -1699.9706913379,
				["name"] = "",
				["speed"] = 0,
				["task"] = 
				{
					["id"] = "ComboTask",
					["params"] = 
					{
						["tasks"] = 
						{
							[1] = 
							{
								["number"] = 1,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 4,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
							[2] = 
							{
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
								["params"] = 
								{
									["action"] = 
									{
										["id"] = "Option",
										["params"] = 
										{
											["value"] = 1,
											["name"] = 9,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["groupId"] = 19,
		["groupName"] = "Kuznetsov-1",
		["units"] = 
		{
			[1] = 
			{
				["type"] = "CV_1143_5",
				["point"] = 
				{
					["y"] = -69284.035277549,
					["x"] = -1699.9706913379,
				}, -- end of ["point"]
				["groupId"] = 19,
				["y"] = -69284.035277549,
				["skill"] = "Average",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = -1699.9706913379,
				["unitId"] = 93,
				["category"] = "ship",
				["unitName"] = "Kuznetsov 1",
				["heading"] = 0,
				["country"] = "russia",
				["groupName"] = "Kuznetsov-1",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "ship",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Kuznetsov-1"]
} -- end of groupData
