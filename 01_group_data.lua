--[[

These groups are built and placed using the Mission Editor in "Spawnable_Units.miz"
When the mission runs MIST will write a file called 01_group_data.lua to your Logs directory.

Replace this file with the one written to your Logs folder whenever you make updates
to the Spawnable_Units mission, and re-run 'make install' to push the update to all the sandboxes.

]]--

exported = {}

exported.groupData =
{
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 275000000,
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
	["Abrams-1"] = 
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
				["y"] = 40674.12078838,
				["x"] = 15328.594960027,
				["name"] = "",
				["speed"] = 4,
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
											["groupId"] = 1,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [1]
						}, -- end of ["tasks"]
					}, -- end of ["params"]
				}, -- end of ["task"]
			}, -- end of [1]
		}, -- end of ["route"]
		["country"] = "usa",
		["groupName"] = "Abrams-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1368728444059,
				["point"] = 
				{
					["y"] = 40674.12078838,
					["x"] = 15328.594960027,
				}, -- end of ["point"]
				["groupId"] = 64,
				["y"] = 40674.12078838,
				["coalition"] = "blue",
				["groupName"] = "Abrams-1",
				["type"] = "M-1 Abrams",
				["countryId"] = 2,
				["x"] = 15328.594960027,
				["unitId"] = 215,
				["category"] = "vehicle",
				["unitName"] = "Abrams-1-4",
				["playerCanDrive"] = true,
				["country"] = "usa",
				["skill"] = "Excellent",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1368728444059,
				["point"] = 
				{
					["y"] = 40661.128590262,
					["x"] = 15309.384527354,
				}, -- end of ["point"]
				["groupId"] = 64,
				["y"] = 40661.128590262,
				["coalition"] = "blue",
				["groupName"] = "Abrams-1",
				["type"] = "M-1 Abrams",
				["countryId"] = 2,
				["x"] = 15309.384527354,
				["unitId"] = 214,
				["category"] = "vehicle",
				["unitName"] = "Abrams-1-3",
				["playerCanDrive"] = true,
				["country"] = "usa",
				["skill"] = "Excellent",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1368728444059,
				["point"] = 
				{
					["y"] = 40686.838996687,
					["x"] = 15309.542259909,
				}, -- end of ["point"]
				["groupId"] = 64,
				["y"] = 40686.838996687,
				["coalition"] = "blue",
				["groupName"] = "Abrams-1",
				["type"] = "M-1 Abrams",
				["countryId"] = 2,
				["x"] = 15309.542259909,
				["unitId"] = 213,
				["category"] = "vehicle",
				["unitName"] = "Abrams-1-2",
				["playerCanDrive"] = true,
				["country"] = "usa",
				["skill"] = "Excellent",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1368728444059,
				["point"] = 
				{
					["y"] = 40674.851322525,
					["x"] = 15288.406097572,
				}, -- end of ["point"]
				["groupId"] = 64,
				["y"] = 40674.851322525,
				["coalition"] = "blue",
				["groupName"] = "Abrams-1",
				["type"] = "M-1 Abrams",
				["countryId"] = 2,
				["x"] = 15288.406097572,
				["unitId"] = 209,
				["category"] = "vehicle",
				["unitName"] = "Abrams-1-1",
				["playerCanDrive"] = false,
				["country"] = "usa",
				["skill"] = "Excellent",
			}, -- end of [4]
		}, -- end of ["units"]
		["coalition"] = "blue",
		["groupId"] = 64,
		["category"] = "vehicle",
		["countryId"] = 2,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["Abrams-1"]
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
	["Bf 109 K-4 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42808.235898196,
				["x"] = 14543.18548461,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40836.136374377,
				["x"] = 14532.460820702,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 58,
		["groupName"] = "Bf 109 K-4 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42808.235898196,
					["x"] = 14543.18548461,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "bf-109 k4 jagdgeschwader 53",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["AddPropAircraft"] = 
				{
					["MW50TankContents"] = 1,
				}, -- end of ["AddPropAircraft"]
				["type"] = "Bf-109K-4",
				["unitId"] = 176,
				["country"] = "russia",
				["psi"] = -1.5762344692703,
				["unitName"] = "Bf 109 K-4 BFM 1",
				["groupName"] = "Bf 109 K-4 BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 14543.18548461,
				["y"] = -42808.235898196,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 296,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5762344692703,
				["callsign"] = 118,
				["skill"] = "Excellent",
				["groupId"] = 58,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 40,
	}, -- end of ["Bf 109 K-4 BFM 1"]
	["Buk 1"] = 
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
				["y"] = -40680.366329081,
				["x"] = 47912.644450702,
				["name"] = "",
				["speed"] = 0,
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
		["country"] = "russia",
		["groupName"] = "Buk 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -40680.366329081,
					["x"] = 47912.644450702,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -40680.366329081,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk SR 9S18M1",
				["countryId"] = 0,
				["x"] = 47912.644450702,
				["unitId"] = 135,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -41183.538778338,
					["x"] = 48214.000962698,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -41183.538778338,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk LN 9A310M1",
				["countryId"] = 0,
				["x"] = 48214.000962698,
				["unitId"] = 136,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -41134.224193097,
					["x"] = 48315.530991136,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -41134.224193097,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk LN 9A310M1",
				["countryId"] = 0,
				["x"] = 48315.530991136,
				["unitId"] = 137,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -41050.09931239,
					["x"] = 48411.259303664,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -41050.09931239,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk LN 9A310M1",
				["countryId"] = 0,
				["x"] = 48411.259303664,
				["unitId"] = 138,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -40857.192258357,
					["x"] = 48396.755013887,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -40857.192258357,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk LN 9A310M1",
				["countryId"] = 0,
				["x"] = 48396.755013887,
				["unitId"] = 139,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -40733.905795253,
					["x"] = 48361.944718423,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -40733.905795253,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk LN 9A310M1",
				["countryId"] = 0,
				["x"] = 48361.944718423,
				["unitId"] = 140,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-6",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
			[7] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -40612.069761126,
					["x"] = 48321.332707047,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -40612.069761126,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk LN 9A310M1",
				["countryId"] = 0,
				["x"] = 48321.332707047,
				["unitId"] = 141,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [7]
			[8] = 
			{
				["heading"] = 4.4553426335681,
				["point"] = 
				{
					["y"] = -40913.635389711,
					["x"] = 48087.070865407,
				}, -- end of ["point"]
				["groupId"] = 41,
				["y"] = -40913.635389711,
				["coalition"] = "red",
				["groupName"] = "Buk 1",
				["type"] = "SA-11 Buk CC 9S470M1",
				["countryId"] = 0,
				["x"] = 48087.070865407,
				["unitId"] = 142,
				["category"] = "vehicle",
				["unitName"] = "Buk 1-8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [8]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 41,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["Buk 1"]
	["C-101CC BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41102.377214779,
				["x"] = 16137.883818976,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39159.170687585,
				["x"] = 16121.369315912,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 47,
		["groupName"] = "C-101CC BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "The Big 2 CC v2",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["heading"] = 1.5792947057672,
				["type"] = "C-101CC",
				["unitName"] = "C-101CC BFM 1",
				["groupId"] = 47,
				["psi"] = -1.5792947057672,
				["coalition"] = "red",
				["groupName"] = "C-101CC BFM 1",
				["y"] = -41102.377214779,
				["countryId"] = 0,
				["x"] = 16137.883818976,
				["unitId"] = 165,
				["payload"] = 
				{
					["pylons"] = 
					{
						[4] = 
						{
							["CLSID"] = "{C-101-DEFA553}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 1129,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 111,
				["point"] = 
				{
					["y"] = -41102.377214779,
					["x"] = 16137.883818976,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "russia",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 225,
	}, -- end of ["C-101CC BFM 1"]
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
											["unitId"] = 109,
											["modeChannel"] = "X",
											["channel"] = 71,
											["system"] = 3,
											["callsign"] = "C71",
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
											["unitId"] = 110,
											["modeChannel"] = "X",
											["channel"] = 72,
											["system"] = 3,
											["callsign"] = "C72",
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
											["unitId"] = 111,
											["modeChannel"] = "X",
											["channel"] = 73,
											["system"] = 3,
											["callsign"] = "C73",
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
											["unitId"] = 108,
											["modeChannel"] = "X",
											["channel"] = 74,
											["system"] = 3,
											["callsign"] = "C74",
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
											["unitId"] = 112,
											["modeChannel"] = "X",
											["channel"] = 75,
											["system"] = 3,
											["callsign"] = "C75",
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
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 3,
											["name"] = 3,
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
											["value"] = true,
											["name"] = 6,
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
										["id"] = "SetFrequency",
										["params"] = 
										{
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 152000000,
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
											["value"] = 3,
											["name"] = 3,
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
											["value"] = true,
											["name"] = 6,
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
										["id"] = "SetFrequency",
										["params"] = 
										{
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 151000000,
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
	["F-14A BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41151.920723971,
				["x"] = 12862.507377955,
				["name"] = "",
				["speed"] = 222.22222222222,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39115.132012748,
				["x"] = 12823.973537473,
				["name"] = "",
				["speed"] = 222.22222222222,
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
		["country"] = "iran",
		["uncontrolled"] = false,
		["groupId"] = 52,
		["groupName"] = "F-14A BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "vf-111 sundowners 200",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 222.22222222222,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["heading"] = 1.5897129890103,
				["type"] = "F-14A-135-GR",
				["unitName"] = "F-14A BFM 1-1",
				["groupId"] = 52,
				["psi"] = -1.5897129890103,
				["coalition"] = "red",
				["groupName"] = "F-14A BFM 1",
				["y"] = -41151.920723971,
				["countryId"] = 34,
				["x"] = 12862.507377955,
				["unitId"] = 170,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 
				{
					[1] = 1,
					[2] = 1,
					[3] = 1,
					["name"] = "Enfield11",
				}, -- end of ["callsign"]
				["point"] = 
				{
					["y"] = -41151.920723971,
					["x"] = 12862.507377955,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "iran",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 34,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["F-14A BFM 1"]
	["F-14B BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41206.969067518,
				["x"] = 12317.528776844,
				["name"] = "",
				["speed"] = 222.22222222222,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39170.180356294,
				["x"] = 12278.994936362,
				["name"] = "",
				["speed"] = 222.22222222222,
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
		["country"] = "iran",
		["uncontrolled"] = false,
		["groupId"] = 53,
		["groupName"] = "F-14B BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "MACROSS VF-1J MILIA RED",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 222.22222222222,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["heading"] = 1.5897129890103,
				["type"] = "F-14B",
				["unitName"] = "F-14B BFM 1-1",
				["groupId"] = 53,
				["psi"] = -1.5897129890103,
				["coalition"] = "red",
				["groupName"] = "F-14B BFM 1",
				["y"] = -41206.969067518,
				["countryId"] = 34,
				["x"] = 12317.528776844,
				["unitId"] = 171,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 
				{
					[1] = 1,
					[2] = 1,
					[3] = 1,
					["name"] = "Enfield11",
				}, -- end of ["callsign"]
				["point"] = 
				{
					["y"] = -41206.969067518,
					["x"] = 12317.528776844,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "iran",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 34,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["F-14B BFM 1"]
	["F/A-18C BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41118.891717843,
				["x"] = 15526.847205609,
				["name"] = "",
				["speed"] = 180.55555555556,
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
											["value"] = false,
											["name"] = 6,
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
											["groupId"] = 3,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [2]
							[3] = 
							{
								["number"] = 3,
								["auto"] = false,
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 0,
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
											["value"] = 2,
											["name"] = 3,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39082.10300662,
				["x"] = 15488.313365127,
				["name"] = "",
				["speed"] = 180.55555555556,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 48,
		["groupName"] = "F/A-18C BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "canada 150 demo jet",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 180.55555555556,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["heading"] = 1.5897129890103,
				["type"] = "FA-18C_hornet",
				["unitName"] = "F/A-18C BFM 1-1",
				["groupId"] = 48,
				["psi"] = -1.5897129890103,
				["coalition"] = "red",
				["groupName"] = "F/A-18C BFM 1",
				["y"] = -41118.891717843,
				["countryId"] = 0,
				["x"] = 15526.847205609,
				["unitId"] = 166,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 4900,
					["flare"] = 30,
					["ammo_type"] = 1,
					["chaff"] = 60,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 108,
				["point"] = 
				{
					["y"] = -41118.891717843,
					["x"] = 15526.847205609,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "russia",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 305,
	}, -- end of ["F/A-18C BFM 1"]
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
				["y"] = -40559.54026716,
				["x"] = 53313.382631701,
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
		["country"] = "russia",
		["groupName"] = "FUEL-1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40559.54026716,
					["x"] = 53313.382631701,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40559.54026716,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53313.382631701,
				["unitId"] = 205,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40498.929085053,
					["x"] = 53313.624541523,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40498.929085053,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53313.624541523,
				["unitId"] = 204,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40435.006285576,
					["x"] = 53313.239464417,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40435.006285576,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53313.239464417,
				["unitId"] = 203,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40560.271065801,
					["x"] = 53361.728941349,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40560.271065801,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53361.728941349,
				["unitId"] = 202,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40435.776439786,
					["x"] = 53411.81920337,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40435.776439786,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53411.81920337,
				["unitId"] = 201,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
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
			}, -- end of [6]
			[7] = 
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
			}, -- end of [7]
			[8] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40435.45147624,
					["x"] = 53359.739784544,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40435.45147624,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53359.739784544,
				["unitId"] = 15,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [8]
			[9] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40619.337277344,
					["x"] = 53363.30988109,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40619.337277344,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53363.30988109,
				["unitId"] = 208,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [9]
			[10] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40384.360264709,
					["x"] = 53362.800169566,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40384.360264709,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53362.800169566,
				["unitId"] = 207,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [10]
			[11] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40496.9273619,
					["x"] = 53255.271573212,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40496.9273619,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53255.271573212,
				["unitId"] = 206,
				["category"] = "vehicle",
				["unitName"] = "FUEL-1-6",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [11]
			[12] = 
			{
				["heading"] = 3.1438313580979,
				["point"] = 
				{
					["y"] = -40501.295848619,
					["x"] = 53459.862367883,
				}, -- end of ["point"]
				["groupId"] = 4,
				["y"] = -40501.295848619,
				["coalition"] = "red",
				["groupName"] = "FUEL-1",
				["type"] = "ATZ-10",
				["countryId"] = 0,
				["x"] = 53459.862367883,
				["unitId"] = 16,
				["category"] = "vehicle",
				["unitName"] = "BTR-2-8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [12]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 4,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["FUEL-1"]
	["Fw 190 A-8 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42752.167300265,
				["x"] = 15038.458099673,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40780.067776446,
				["x"] = 15027.733435765,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 57,
		["groupName"] = "Fw 190 A-8 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42752.167300265,
					["x"] = 15038.458099673,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "Fictional IJN OTU Tsukuba Tsu-102",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["type"] = "FW-190A8",
				["unitId"] = 175,
				["country"] = "russia",
				["psi"] = -1.5762344692703,
				["unitName"] = "Fw 190 A-8 BFM 1",
				["groupName"] = "Fw 190 A-8 BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 15038.458099673,
				["y"] = -42752.167300265,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 205,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5762344692703,
				["callsign"] = 119,
				["skill"] = "Excellent",
				["groupId"] = 57,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 38.4,
	}, -- end of ["Fw 190 A-8 BFM 1"]
	["Fw 190 D-9 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42786.690161088,
				["x"] = 12983.847157734,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40857.72525822,
				["x"] = 12984.105905728,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 61,
		["groupName"] = "Fw 190 D-9 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42786.690161088,
					["x"] = 12983.847157734,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "FW-190D9_USA",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["type"] = "FW-190D9",
				["unitId"] = 179,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "Fw 190 D-9 BFM 1",
				["groupName"] = "Fw 190 D-9 BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 12983.847157734,
				["y"] = -42786.690161088,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 194,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["callsign"] = 122,
				["skill"] = "Excellent",
				["groupId"] = 61,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 38.4,
	}, -- end of ["Fw 190 D-9 BFM 1"]
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
				["y"] = -42037.661321097,
				["x"] = 47656.111384204,
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
					["y"] = -42037.661321097,
					["x"] = 47656.111384204,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -42037.661321097,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 54K6 cp",
				["countryId"] = 0,
				["x"] = 47656.111384204,
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
					["y"] = -41790.97717158,
					["x"] = 47738.411869444,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41790.97717158,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 64H6E sr",
				["countryId"] = 0,
				["x"] = 47738.411869444,
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
					["y"] = -41675.908058928,
					["x"] = 47118.370048548,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41675.908058928,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 40B6MD sr",
				["countryId"] = 0,
				["x"] = 47118.370048548,
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
					["y"] = -41873.845840355,
					["x"] = 47043.893502561,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41873.845840355,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 40B6M tr",
				["countryId"] = 0,
				["x"] = 47043.893502561,
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
					["y"] = -41982.909476012,
					["x"] = 47495.766695027,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41982.909476012,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47495.766695027,
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
					["y"] = -41982.909476012,
					["x"] = 47384.307581818,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41982.909476012,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47384.307581818,
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
					["y"] = -41965.310668663,
					["x"] = 47294.358122036,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41965.310668663,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47294.358122036,
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
					["y"] = -41898.826285346,
					["x"] = 47223.962892641,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41898.826285346,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85C ln",
				["countryId"] = 0,
				["x"] = 47223.962892641,
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
					["y"] = -41752.16955744,
					["x"] = 47495.766695027,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41752.16955744,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47495.766695027,
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
					["y"] = -41724.793634897,
					["x"] = 47411.683504361,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41724.793634897,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47411.683504361,
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
					["y"] = -41716.971942742,
					["x"] = 47325.644890656,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41716.971942742,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47325.644890656,
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
					["y"] = -41728.704480975,
					["x"] = 47247.427969106,
				}, -- end of ["point"]
				["groupId"] = 6,
				["y"] = -41728.704480975,
				["coalition"] = "red",
				["groupName"] = "Grumble-1",
				["type"] = "S-300PS 5P85D ln",
				["countryId"] = 0,
				["x"] = 47247.427969106,
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
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAS",
								["number"] = 1,
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
					["y"] = -40674.989075266,
					["x"] = 59571.656975918,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40674.989075266,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59571.656975918,
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
					["y"] = -40674.851134768,
					["x"] = 59566.484207245,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40674.851134768,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59566.484207245,
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
					["y"] = -40674.851134768,
					["x"] = 59561.035557577,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40674.851134768,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59561.035557577,
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
					["y"] = -40677.885825722,
					["x"] = 59563.035694797,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40677.885825722,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59563.035694797,
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
					["y"] = -40678.299647216,
					["x"] = 59568.829195711,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40678.299647216,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper RPG-16",
				["countryId"] = 0,
				["x"] = 59568.829195711,
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
					["y"] = -40678.299647216,
					["x"] = 59573.519172641,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40678.299647216,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper RPG-16",
				["countryId"] = 0,
				["x"] = 59573.519172641,
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
					["y"] = -40671.471592568,
					["x"] = 59563.51848654,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40671.471592568,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59563.51848654,
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
					["y"] = -40671.402622319,
					["x"] = 59568.622284964,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40671.402622319,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59568.622284964,
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
					["y"] = -40671.747473564,
					["x"] = 59573.657113139,
				}, -- end of ["point"]
				["groupId"] = 14,
				["y"] = -40671.747473564,
				["coalition"] = "red",
				["groupName"] = "Infantry-1",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59573.657113139,
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
	["Infantry-2"] = 
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
				["y"] = -40677.02040216,
				["x"] = 59475.742661808,
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
		["groupId"] = 63,
		["groupName"] = "Infantry-2",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40677.02040216,
					["x"] = 59475.742661808,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40677.02040216,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59475.742661808,
				["unitId"] = 200,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-20",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40678.766343704,
					["x"] = 59474.322120063,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40678.766343704,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59474.322120063,
				["unitId"] = 199,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-19",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40684.716423996,
					["x"] = 59465.712439357,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40684.716423996,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59465.712439357,
				["unitId"] = 198,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-18",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40670.221455805,
					["x"] = 59474.248365069,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40670.221455805,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59474.248365069,
				["unitId"] = 197,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-17",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40670.261719605,
					["x"] = 59465.792966958,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40670.261719605,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59465.792966958,
				["unitId"] = 196,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-16",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40672.999658041,
					["x"] = 59462.330280112,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40672.999658041,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59462.330280112,
				["unitId"] = 195,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-15",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
			[7] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40679.965295533,
					["x"] = 59468.571169194,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40679.965295533,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59468.571169194,
				["unitId"] = 194,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-14",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [7]
			[8] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40669.375915994,
					["x"] = 59462.249752511,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40669.375915994,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59462.249752511,
				["unitId"] = 193,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-13",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [8]
			[9] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40681.21347335,
					["x"] = 59462.008169708,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40681.21347335,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59462.008169708,
				["unitId"] = 192,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-12",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [9]
			[10] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40673.64387885,
					["x"] = 59468.691960596,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40673.64387885,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59468.691960596,
				["unitId"] = 191,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-11",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [10]
			[11] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40673.321768446,
					["x"] = 59472.355966444,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40673.321768446,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59472.355966444,
				["unitId"] = 181,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [11]
			[12] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40671.104860568,
					["x"] = 59456.801582209,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40671.104860568,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Paratrooper AKS-74",
				["countryId"] = 0,
				["x"] = 59456.801582209,
				["unitId"] = 182,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [12]
			[13] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40682.697370782,
					["x"] = 59471.154200003,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40682.697370782,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59471.154200003,
				["unitId"] = 183,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [13]
			[14] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40683.629301381,
					["x"] = 59475.738125689,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40683.629301381,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59475.738125689,
				["unitId"] = 184,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [14]
			[15] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40665.752173946,
					["x"] = 59466.517715367,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40665.752173946,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59466.517715367,
				["unitId"] = 185,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [15]
			[16] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40676.864982892,
					["x"] = 59459.431286474,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40676.864982892,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59459.431286474,
				["unitId"] = 186,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-6",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [16]
			[17] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40677.026038094,
					["x"] = 59470.584359221,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40677.026038094,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59470.584359221,
				["unitId"] = 187,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-7",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [17]
			[18] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40673.362032246,
					["x"] = 59476.140763694,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40673.362032246,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59476.140763694,
				["unitId"] = 188,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-8",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [18]
			[19] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40669.335652193,
					["x"] = 59470.181721215,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40669.335652193,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59470.181721215,
				["unitId"] = 189,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-9",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [19]
			[20] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -40676.864982892,
					["x"] = 59464.866899546,
				}, -- end of ["point"]
				["groupId"] = 63,
				["y"] = -40676.864982892,
				["coalition"] = "red",
				["groupName"] = "Infantry-2",
				["type"] = "Infantry AK",
				["countryId"] = 0,
				["x"] = 59464.866899546,
				["unitId"] = 190,
				["category"] = "vehicle",
				["unitName"] = "Infantry-2-10",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [20]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "vehicle",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Infantry-2"]
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
				["y"] = -39422.359362187,
				["x"] = 47516.604569005,
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
					["y"] = -39422.359362187,
					["x"] = 47516.604569005,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39422.359362187,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 1S91 str",
				["countryId"] = 0,
				["x"] = 47516.604569005,
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
					["y"] = -39075.679852578,
					["x"] = 47431.778731548,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39075.679852578,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47431.778731548,
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
					["y"] = -39085.514732284,
					["x"] = 47280.56745608,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39085.514732284,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47280.56745608,
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
					["y"] = -39433.423601855,
					["x"] = 47299.007855527,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39433.423601855,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47299.007855527,
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
					["y"] = -39277.294886535,
					["x"] = 47193.282898696,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39277.294886535,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "Kub 2P25 ln",
				["countryId"] = 0,
				["x"] = 47193.282898696,
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
					["y"] = -39187.494396695,
					["x"] = 47565.63015841,
				}, -- end of ["point"]
				["groupId"] = 7,
				["y"] = -39187.494396695,
				["coalition"] = "red",
				["groupName"] = "KUB-1",
				["type"] = "p-19 s-125 sr",
				["countryId"] = 0,
				["x"] = 47565.63015841,
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
											["unitId"] = 115,
											["modeChannel"] = "X",
											["channel"] = 76,
											["system"] = 3,
											["callsign"] = "LHA",
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
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
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
								["number"] = 2,
								["auto"] = false,
								["id"] = "WrappedAction",
								["enabled"] = true,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
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
	["MiG-15bis BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41091.36754607,
				["x"] = 14304.773978875,
				["name"] = "",
				["speed"] = 236.11111111111,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39054.578834847,
				["x"] = 14266.240138393,
				["name"] = "",
				["speed"] = 236.11111111111,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 50,
		["groupName"] = "MiG-15bis BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "ussr_red",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 236.11111111111,
				["heading"] = 1.5897129890103,
				["type"] = "MiG-15bis",
				["unitName"] = "MiG-15bis BFM 1-1",
				["groupId"] = 50,
				["psi"] = -1.5897129890103,
				["coalition"] = "red",
				["groupName"] = "MiG-15bis BFM 1",
				["y"] = -41091.36754607,
				["countryId"] = 0,
				["x"] = 14304.773978875,
				["unitId"] = 168,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 1172,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 113,
				["point"] = 
				{
					["y"] = -41091.36754607,
					["x"] = 14304.773978875,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "russia",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 3.75,
	}, -- end of ["MiG-15bis BFM 1"]
	["MiG-28 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41173.94006139,
				["x"] = 13561.621340997,
				["name"] = "",
				["speed"] = 175,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39137.151350166,
				["x"] = 13523.087500514,
				["name"] = "",
				["speed"] = 175,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 51,
		["groupName"] = "MiG-28 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "black 'mig-28'",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 175,
				["AddPropAircraft"] = 
				{
				}, -- end of ["AddPropAircraft"]
				["heading"] = 1.5897129890108,
				["type"] = "F-5E-3",
				["unitName"] = "MiG-28 BFM 1-1",
				["groupId"] = 51,
				["psi"] = -1.5897129890108,
				["coalition"] = "red",
				["groupName"] = "MiG-28 BFM 1",
				["y"] = -41173.94006139,
				["countryId"] = 0,
				["x"] = 13561.621340997,
				["unitId"] = 169,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 2,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 114,
				["point"] = 
				{
					["y"] = -41173.94006139,
					["x"] = 13561.621340997,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "russia",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 305,
	}, -- end of ["MiG-28 BFM 1"]
	["MiG-29A BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41080.35787736,
				["x"] = 16660.843082669,
				["name"] = "",
				["speed"] = 222.22222222222,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39151.392974492,
				["x"] = 16661.101830663,
				["name"] = "",
				["speed"] = 222.22222222222,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 46,
		["groupName"] = "MiG-29A BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -41080.35787736,
					["x"] = 16660.843082669,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "MIG-29A AC7 03 Erusean Special Yellow Skin",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 222.22222222222,
				["type"] = "MiG-29A",
				["unitId"] = 164,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "MiG-29A BFM 1-1",
				["groupName"] = "MiG-29A BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 16660.843082669,
				["y"] = -41080.35787736,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "3376",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["skill"] = "Excellent",
				["callsign"] = 110,
				["groupId"] = 46,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["MiG-29A BFM 1"]
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
					["y"] = -39364.328539152,
					["x"] = 44363.680167321,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39364.328539152,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44363.680167321,
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
					["y"] = -39209.369621692,
					["x"] = 44213.944584158,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39209.369621692,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44213.944584158,
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
					["y"] = -39043.96403564,
					["x"] = 44067.691223859,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39043.96403564,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "Osa 9A33 ln",
				["countryId"] = 0,
				["x"] = 44067.691223859,
				["unitId"] = 98,
				["category"] = "vehicle",
				["unitName"] = "OSA-1-3",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 3.1220102982056,
				["point"] = 
				{
					["y"] = -39531.475236637,
					["x"] = 44058.985666698,
				}, -- end of ["point"]
				["groupId"] = 21,
				["y"] = -39531.475236637,
				["coalition"] = "red",
				["groupName"] = "OSA-1",
				["type"] = "p-19 s-125 sr",
				["countryId"] = 0,
				["x"] = 44058.985666698,
				["unitId"] = 134,
				["category"] = "vehicle",
				["unitName"] = "OSA-1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 21,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["OSA-1"]
	["P-47D-30 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42680.512697477,
				["x"] = 16659.278691483,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40751.547794609,
				["x"] = 16659.537439477,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 54,
		["groupName"] = "P-47D-30 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42680.512697477,
					["x"] = 16659.278691483,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "lt_col_benjamin_mayo",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["AddPropAircraft"] = 
				{
					["WaterTankContents"] = 1,
				}, -- end of ["AddPropAircraft"]
				["type"] = "P-47D-30bl1",
				["unitId"] = 172,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "P-47D-30 BFM 1",
				["groupName"] = "P-47D-30 BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 16659.278691483,
				["y"] = -42680.512697477,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 390,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["callsign"] = 116,
				["skill"] = "Excellent",
				["groupId"] = 54,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["P-47D-30 BFM 1"]
	["P-47D-40 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42845.614963484,
				["x"] = 13948.017317566,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40916.650060616,
				["x"] = 13948.27606556,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 59,
		["groupName"] = "P-47D-40 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42845.614963484,
					["x"] = 13948.017317566,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "lt_col_benjamin_mayo",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["AddPropAircraft"] = 
				{
					["WaterTankContents"] = 1,
				}, -- end of ["AddPropAircraft"]
				["type"] = "P-47D-40",
				["unitId"] = 177,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "P-47D-40 BFM 1",
				["groupName"] = "P-47D-40 BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 13948.017317566,
				["y"] = -42845.614963484,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 390,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["callsign"] = 120,
				["skill"] = "Excellent",
				["groupId"] = 59,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["P-47D-40 BFM 1"]
	["P-51D-25-NA BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42730.362845514,
				["x"] = 16139.412861959,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAS",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40801.397942646,
				["x"] = 16139.671609953,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 55,
		["groupName"] = "P-51D-25-NA BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42730.362845514,
					["x"] = 16139.412861959,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "USAF 302nd FS, RED TAILS",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["type"] = "P-51D",
				["unitId"] = 173,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "P-51D-25-NA BFM 1",
				["groupName"] = "P-51D-25-NA BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 16139.412861959,
				["y"] = -42730.362845514,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 351,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["skill"] = "Excellent",
				["callsign"] = 115,
				["groupId"] = 55,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAS",
		["frequency"] = 124,
	}, -- end of ["P-51D-25-NA BFM 1"]
	["P-51D-30-NA BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42827.675815576,
				["x"] = 13511.119588764,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAS",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40898.710912708,
				["x"] = 13511.378336758,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 60,
		["groupName"] = "P-51D-30-NA BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42827.675815576,
					["x"] = 13511.119588764,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "Dogfight Red",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["type"] = "P-51D-30-NA",
				["unitId"] = 178,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "P-51D-30-NA BFM 1",
				["groupName"] = "P-51D-30-NA BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 13511.119588764,
				["y"] = -42827.675815576,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 351,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["skill"] = "Excellent",
				["callsign"] = 121,
				["groupId"] = 60,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAS",
		["frequency"] = 124,
	}, -- end of ["P-51D-30-NA BFM 1"]
	["SA-2 1"] = 
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
				["y"] = -42403.064213843,
				["x"] = 45706.397282643,
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
											["value"] = false,
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
		["country"] = "russia",
		["groupName"] = "SA-2 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42403.064213843,
					["x"] = 45706.397282643,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42403.064213843,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "SNR_75V",
				["countryId"] = 0,
				["x"] = 45706.397282643,
				["unitId"] = 116,
				["category"] = "vehicle",
				["unitName"] = "OSA-2-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42333.699489069,
					["x"] = 45555.065021996,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42333.699489069,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "S_75M_Volhov",
				["countryId"] = 0,
				["x"] = 45555.065021996,
				["unitId"] = 117,
				["category"] = "vehicle",
				["unitName"] = "OSA-2-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42515.420861075,
					["x"] = 45557.294732082,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42515.420861075,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "S_75M_Volhov",
				["countryId"] = 0,
				["x"] = 45557.294732082,
				["unitId"] = 118,
				["category"] = "vehicle",
				["unitName"] = "OSA-2-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42600.149844341,
					["x"] = 45701.111032627,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42600.149844341,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "S_75M_Volhov",
				["countryId"] = 0,
				["x"] = 45701.111032627,
				["unitId"] = 123,
				["category"] = "vehicle",
				["unitName"] = "SA-2 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42242.281375545,
					["x"] = 45706.685307841,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42242.281375545,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "S_75M_Volhov",
				["countryId"] = 0,
				["x"] = 45706.685307841,
				["unitId"] = 124,
				["category"] = "vehicle",
				["unitName"] = "SA-2 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42485.319774915,
					["x"] = 45876.143274374,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42485.319774915,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "S_75M_Volhov",
				["countryId"] = 0,
				["x"] = 45876.143274374,
				["unitId"] = 125,
				["category"] = "vehicle",
				["unitName"] = "SA-2 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
			[7] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42338.158909241,
					["x"] = 45879.487839503,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42338.158909241,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "S_75M_Volhov",
				["countryId"] = 0,
				["x"] = 45879.487839503,
				["unitId"] = 126,
				["category"] = "vehicle",
				["unitName"] = "SA-2 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [7]
			[8] = 
			{
				["heading"] = 3.1364014998397,
				["point"] = 
				{
					["y"] = -42068.313870897,
					["x"] = 45710.062432384,
				}, -- end of ["point"]
				["groupId"] = 39,
				["y"] = -42068.313870897,
				["coalition"] = "red",
				["groupName"] = "SA-2 1",
				["type"] = "1L13 EWR",
				["countryId"] = 0,
				["x"] = 45710.062432384,
				["unitId"] = 127,
				["category"] = "vehicle",
				["unitName"] = "SA-2 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [8]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 39,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["SA-2 1"]
	["SA-3 1"] = 
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
				["y"] = -39140.707380129,
				["x"] = 46092.117954536,
				["name"] = "",
				["speed"] = 0,
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
		["country"] = "russia",
		["groupName"] = "SA-3 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.0772876871483,
				["point"] = 
				{
					["y"] = -39140.707380129,
					["x"] = 46092.117954536,
				}, -- end of ["point"]
				["groupId"] = 40,
				["y"] = -39140.707380129,
				["coalition"] = "red",
				["groupName"] = "SA-3 1",
				["type"] = "snr s-125 tr",
				["countryId"] = 0,
				["x"] = 46092.117954536,
				["unitId"] = 128,
				["category"] = "vehicle",
				["unitName"] = "Ground-1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.0772876871483,
				["point"] = 
				{
					["y"] = -39342.41200121,
					["x"] = 46088.949163762,
				}, -- end of ["point"]
				["groupId"] = 40,
				["y"] = -39342.41200121,
				["coalition"] = "red",
				["groupName"] = "SA-3 1",
				["type"] = "5p73 s-125 ln",
				["countryId"] = 0,
				["x"] = 46088.949163762,
				["unitId"] = 129,
				["category"] = "vehicle",
				["unitName"] = "SA-3 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.0772876871483,
				["point"] = 
				{
					["y"] = -39227.512756429,
					["x"] = 45969.794391397,
				}, -- end of ["point"]
				["groupId"] = 40,
				["y"] = -39227.512756429,
				["coalition"] = "red",
				["groupName"] = "SA-3 1",
				["type"] = "5p73 s-125 ln",
				["countryId"] = 0,
				["x"] = 45969.794391397,
				["unitId"] = 130,
				["category"] = "vehicle",
				["unitName"] = "SA-3 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.0772876871483,
				["point"] = 
				{
					["y"] = -39042.822859264,
					["x"] = 45972.347707948,
				}, -- end of ["point"]
				["groupId"] = 40,
				["y"] = -39042.822859264,
				["coalition"] = "red",
				["groupName"] = "SA-3 1",
				["type"] = "5p73 s-125 ln",
				["countryId"] = 0,
				["x"] = 45972.347707948,
				["unitId"] = 131,
				["category"] = "vehicle",
				["unitName"] = "SA-3 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 3.0772876871483,
				["point"] = 
				{
					["y"] = -38947.499041373,
					["x"] = 46091.502480312,
				}, -- end of ["point"]
				["groupId"] = 40,
				["y"] = -38947.499041373,
				["coalition"] = "red",
				["groupName"] = "SA-3 1",
				["type"] = "5p73 s-125 ln",
				["countryId"] = 0,
				["x"] = 46091.502480312,
				["unitId"] = 132,
				["category"] = "vehicle",
				["unitName"] = "SA-3 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
			[6] = 
			{
				["heading"] = 3.0772876871483,
				["point"] = 
				{
					["y"] = -39074.313763389,
					["x"] = 46263.425794724,
				}, -- end of ["point"]
				["groupId"] = 40,
				["y"] = -39074.313763389,
				["coalition"] = "red",
				["groupName"] = "SA-3 1",
				["type"] = "p-19 s-125 sr",
				["countryId"] = 0,
				["x"] = 46263.425794724,
				["unitId"] = 133,
				["category"] = "vehicle",
				["unitName"] = "SA-3 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [6]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 40,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["SA-3 1"]
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
											["unitId"] = 106,
											["modeChannel"] = "X",
											["channel"] = 41,
											["system"] = 4,
											["callsign"] = "SH1",
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 141000000,
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
				["livery_id"] = "Armee de l'air_740",
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
	["Shell 2"] = 
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
											["unitId"] = 107,
											["modeChannel"] = "X",
											["channel"] = 42,
											["system"] = 4,
											["callsign"] = "SH2",
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 142000000,
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
									["altitude"] = 3048,
									["speedEdited"] = true,
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
				["livery_id"] = "Standard USAF",
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
	["Shilka 1"] = 
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
				["y"] = -41807.801228137,
				["x"] = 45013.573549471,
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
		["groupId"] = 45,
		["groupName"] = "Shilka 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41807.801228137,
					["x"] = 45013.573549471,
				}, -- end of ["point"]
				["groupId"] = 45,
				["y"] = -41807.801228137,
				["coalition"] = "red",
				["groupName"] = "Shilka 1",
				["type"] = "ZSU-23-4 Shilka",
				["countryId"] = 0,
				["x"] = 45013.573549471,
				["unitId"] = 159,
				["category"] = "vehicle",
				["unitName"] = "Shilka 1-1",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41787.987779756,
					["x"] = 44949.179842232,
				}, -- end of ["point"]
				["groupId"] = 45,
				["y"] = -41787.987779756,
				["coalition"] = "red",
				["groupName"] = "Shilka 1",
				["type"] = "ZSU-23-4 Shilka",
				["countryId"] = 0,
				["x"] = 44949.179842232,
				["unitId"] = 160,
				["category"] = "vehicle",
				["unitName"] = "Shilka 1-2",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41647.312296249,
					["x"] = 44893.702186765,
				}, -- end of ["point"]
				["groupId"] = 45,
				["y"] = -41647.312296249,
				["coalition"] = "red",
				["groupName"] = "Shilka 1",
				["type"] = "ZSU-23-4 Shilka",
				["countryId"] = 0,
				["x"] = 44893.702186765,
				["unitId"] = 161,
				["category"] = "vehicle",
				["unitName"] = "Shilka 1-3",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41727.556762193,
					["x"] = 44906.580928213,
				}, -- end of ["point"]
				["groupId"] = 45,
				["y"] = -41727.556762193,
				["coalition"] = "red",
				["groupName"] = "Shilka 1",
				["type"] = "ZSU-23-4 Shilka",
				["countryId"] = 0,
				["x"] = 44906.580928213,
				["unitId"] = 162,
				["category"] = "vehicle",
				["unitName"] = "Shilka 1-4",
				["playerCanDrive"] = true,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 0,
				["point"] = 
				{
					["y"] = -41677.75600986,
					["x"] = 45014.247873201,
				}, -- end of ["point"]
				["groupId"] = 45,
				["y"] = -41677.75600986,
				["coalition"] = "red",
				["groupName"] = "Shilka 1",
				["type"] = "Dog Ear radar",
				["countryId"] = 0,
				["x"] = 45014.247873201,
				["unitId"] = 163,
				["category"] = "vehicle",
				["unitName"] = "Shilka 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
		}, -- end of ["units"]
		["countryId"] = 0,
		["category"] = "vehicle",
		["hidden"] = false,
		["startTime"] = 0,
		["coalition"] = "red",
		["country"] = "russia",
	}, -- end of ["Shilka 1"]
	["Spitfire LF Mk. IX BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42901.683561416,
				["x"] = 15566.437396862,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40929.584037597,
				["x"] = 15555.712732954,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 56,
		["groupName"] = "Spitfire LF Mk. IX BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42901.683561416,
					["x"] = 15566.437396862,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "raf 2 taf, june 1944",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["type"] = "SpitfireLFMkIX",
				["unitId"] = 174,
				["country"] = "russia",
				["psi"] = -1.5762344692703,
				["unitName"] = "Spitfire LF Mk. IX BFM 1",
				["groupName"] = "Spitfire LF Mk. IX BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 15566.437396862,
				["y"] = -42901.683561416,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 124,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5762344692703,
				["skill"] = "Excellent",
				["callsign"] = 117,
				["groupId"] = 56,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["Spitfire LF Mk. IX BFM 1"]
	["Spitfire LF Mk. IX CW BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -42768.143580007,
				["x"] = 12590.659638815,
				["name"] = "",
				["speed"] = 125,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -40839.178677139,
				["x"] = 12590.918386809,
				["name"] = "",
				["speed"] = 125,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 62,
		["groupName"] = "Spitfire LF Mk. IX CW BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["point"] = 
				{
					["y"] = -42768.143580007,
					["x"] = 12590.659638815,
				}, -- end of ["point"]
				["alt_type"] = "BARO",
				["livery_id"] = "raf 2 taf, june 1944",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 125,
				["type"] = "SpitfireLFMkIXCW",
				["unitId"] = 180,
				["country"] = "russia",
				["psi"] = -1.5706621885366,
				["unitName"] = "Spitfire LF Mk. IX CW BFM 1",
				["groupName"] = "Spitfire LF Mk. IX CW BFM 1",
				["coalition"] = "red",
				["countryId"] = 0,
				["x"] = 12590.659638815,
				["y"] = -42768.143580007,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 124,
					["flare"] = 0,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
				}, -- end of ["payload"]
				["heading"] = 1.5706621885366,
				["skill"] = "Excellent",
				["callsign"] = 123,
				["groupId"] = 62,
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 124,
	}, -- end of ["Spitfire LF Mk. IX CW BFM 1"]
	["Strela 1"] = 
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
				["y"] = -40919.361291614,
				["x"] = 46713.191553415,
				["name"] = "",
				["speed"] = 0,
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
		["country"] = "russia",
		["groupName"] = "Strela 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 0.47963283036327,
				["point"] = 
				{
					["y"] = -40919.361291614,
					["x"] = 46713.191553415,
				}, -- end of ["point"]
				["groupId"] = 42,
				["y"] = -40919.361291614,
				["coalition"] = "red",
				["groupName"] = "Strela 1",
				["type"] = "Dog Ear radar",
				["countryId"] = 0,
				["x"] = 46713.191553415,
				["unitId"] = 143,
				["category"] = "vehicle",
				["unitName"] = "Strela 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 0.47963283036327,
				["point"] = 
				{
					["y"] = -40952.729740116,
					["x"] = 46825.590537846,
				}, -- end of ["point"]
				["groupId"] = 42,
				["y"] = -40952.729740116,
				["coalition"] = "red",
				["groupName"] = "Strela 1",
				["type"] = "Strela-10M3",
				["countryId"] = 0,
				["x"] = 46825.590537846,
				["unitId"] = 144,
				["category"] = "vehicle",
				["unitName"] = "Strela 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 0.47963283036327,
				["point"] = 
				{
					["y"] = -40802.132663321,
					["x"] = 46694.312036499,
				}, -- end of ["point"]
				["groupId"] = 42,
				["y"] = -40802.132663321,
				["coalition"] = "red",
				["groupName"] = "Strela 1",
				["type"] = "Strela-10M3",
				["countryId"] = 0,
				["x"] = 46694.312036499,
				["unitId"] = 145,
				["category"] = "vehicle",
				["unitName"] = "Strela 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 0.47963283036327,
				["point"] = 
				{
					["y"] = -41035.71180284,
					["x"] = 46729.875777667,
				}, -- end of ["point"]
				["groupId"] = 42,
				["y"] = -41035.71180284,
				["coalition"] = "red",
				["groupName"] = "Strela 1",
				["type"] = "Strela-10M3",
				["countryId"] = 0,
				["x"] = 46729.875777667,
				["unitId"] = 146,
				["category"] = "vehicle",
				["unitName"] = "Strela 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 0.47963283036327,
				["point"] = 
				{
					["y"] = -40883.797550446,
					["x"] = 46611.769032308,
				}, -- end of ["point"]
				["groupId"] = 42,
				["y"] = -40883.797550446,
				["coalition"] = "red",
				["groupName"] = "Strela 1",
				["type"] = "Strela-10M3",
				["countryId"] = 0,
				["x"] = 46611.769032308,
				["unitId"] = 147,
				["category"] = "vehicle",
				["unitName"] = "Strela 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 42,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["Strela 1"]
	["Su-27 BFM 1"] = 
	{
		["route"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -41118.891717843,
				["x"] = 15025.907279335,
				["name"] = "",
				["speed"] = 169.44444444444,
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
								["id"] = "EngageGroup",
								["enabled"] = true,
								["params"] = 
								{
									["visible"] = false,
									["priority"] = 1,
									["weaponType"] = 805306368,
									["groupId"] = 29,
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
											["value"] = 0,
											["name"] = 0,
										}, -- end of ["params"]
									}, -- end of ["action"]
								}, -- end of ["params"]
							}, -- end of [3]
							[1] = 
							{
								["enabled"] = true,
								["auto"] = true,
								["id"] = "EngageTargets",
								["key"] = "CAP",
								["number"] = 1,
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
											["value"] = 2,
											["name"] = 3,
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
											["value"] = false,
											["name"] = 6,
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
				["alt"] = 2000,
				["type"] = "Turning Point",
				["action"] = "Turning Point",
				["alt_type"] = "BARO",
				["form"] = "Turning Point",
				["y"] = -39082.10300662,
				["x"] = 14987.373438853,
				["name"] = "",
				["speed"] = 169.44444444444,
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
		["country"] = "russia",
		["uncontrolled"] = false,
		["groupId"] = 49,
		["groupName"] = "Su-27 BFM 1",
		["units"] = 
		{
			[1] = 
			{
				["alt"] = 2000,
				["hardpoint_racks"] = true,
				["alt_type"] = "BARO",
				["livery_id"] = "Fictional Splinter",
				["onboard_num"] = "053",
				["category"] = "plane",
				["speed"] = 169.44444444444,
				["heading"] = 1.5897129890103,
				["type"] = "Su-27",
				["unitName"] = "Su-27 BFM 1-1",
				["groupId"] = 49,
				["psi"] = -1.5897129890103,
				["coalition"] = "red",
				["groupName"] = "Su-27 BFM 1",
				["y"] = -41118.891717843,
				["countryId"] = 0,
				["x"] = 15025.907279335,
				["unitId"] = 167,
				["payload"] = 
				{
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 9400,
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				}, -- end of ["payload"]
				["callsign"] = 112,
				["point"] = 
				{
					["y"] = -41118.891717843,
					["x"] = 15025.907279335,
				}, -- end of ["point"]
				["skill"] = "Excellent",
				["country"] = "russia",
			}, -- end of [1]
		}, -- end of ["units"]
		["countryId"] = 0,
		["radioSet"] = false,
		["hidden"] = false,
		["category"] = "plane",
		["coalition"] = "red",
		["startTime"] = 0,
		["task"] = "CAP",
		["frequency"] = 127.5,
	}, -- end of ["Su-27 BFM 1"]
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
											["unitId"] = 101,
											["modeChannel"] = "X",
											["channel"] = 31,
											["system"] = 4,
											["callsign"] = "TX1",
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 131000000,
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
											["unitId"] = 103,
											["modeChannel"] = "X",
											["channel"] = 32,
											["system"] = 4,
											["callsign"] = "TX2",
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 132000000,
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
				["livery_id"] = "127th ARW USAF",
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
											["unitId"] = 104,
											["modeChannel"] = "X",
											["channel"] = 33,
											["system"] = 4,
											["callsign"] = "TX3",
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 133000000,
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
				["livery_id"] = "USAF - VS-21 - CAG",
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
											["power"] = 10,
											["modulation"] = 0,
											["frequency"] = 134000000,
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
				["livery_id"] = "RF Air Force new",
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
	["Tor 1"] = 
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
				["y"] = -40768.732593969,
				["x"] = 45314.110996243,
				["name"] = "",
				["speed"] = 0,
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
		["country"] = "russia",
		["groupName"] = "Tor 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 6.1553515157872,
				["point"] = 
				{
					["y"] = -40768.732593969,
					["x"] = 45314.110996243,
				}, -- end of ["point"]
				["groupId"] = 43,
				["y"] = -40768.732593969,
				["coalition"] = "red",
				["groupName"] = "Tor 1",
				["type"] = "Dog Ear radar",
				["countryId"] = 0,
				["x"] = 45314.110996243,
				["unitId"] = 148,
				["category"] = "vehicle",
				["unitName"] = "Tor 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 6.1553515157872,
				["point"] = 
				{
					["y"] = -40962.42944824,
					["x"] = 45300.275506652,
				}, -- end of ["point"]
				["groupId"] = 43,
				["y"] = -40962.42944824,
				["coalition"] = "red",
				["groupName"] = "Tor 1",
				["type"] = "Tor 9A331",
				["countryId"] = 0,
				["x"] = 45300.275506652,
				["unitId"] = 149,
				["category"] = "vehicle",
				["unitName"] = "Tor 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 6.1553515157872,
				["point"] = 
				{
					["y"] = -40836.652270142,
					["x"] = 45147.456235264,
				}, -- end of ["point"]
				["groupId"] = 43,
				["y"] = -40836.652270142,
				["coalition"] = "red",
				["groupName"] = "Tor 1",
				["type"] = "Tor 9A331",
				["countryId"] = 0,
				["x"] = 45147.456235264,
				["unitId"] = 150,
				["category"] = "vehicle",
				["unitName"] = "Tor 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 6.1553515157872,
				["point"] = 
				{
					["y"] = -40556.798048874,
					["x"] = 45307.193251448,
				}, -- end of ["point"]
				["groupId"] = 43,
				["y"] = -40556.798048874,
				["coalition"] = "red",
				["groupName"] = "Tor 1",
				["type"] = "Tor 9A331",
				["countryId"] = 0,
				["x"] = 45307.193251448,
				["unitId"] = 151,
				["category"] = "vehicle",
				["unitName"] = "Tor 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 6.1553515157872,
				["point"] = 
				{
					["y"] = -40637.295442857,
					["x"] = 45139.909604578,
				}, -- end of ["point"]
				["groupId"] = 43,
				["y"] = -40637.295442857,
				["coalition"] = "red",
				["groupName"] = "Tor 1",
				["type"] = "Tor 9A331",
				["countryId"] = 0,
				["x"] = 45139.909604578,
				["unitId"] = 152,
				["category"] = "vehicle",
				["unitName"] = "Tor 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 43,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["Tor 1"]
	["Tunguska 1"] = 
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
				["y"] = -40858.337029694,
				["x"] = 43885.130293613,
				["name"] = "",
				["speed"] = 0,
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
		["country"] = "russia",
		["groupName"] = "Tunguska 1",
		["units"] = 
		{
			[1] = 
			{
				["heading"] = 3.210652124164,
				["point"] = 
				{
					["y"] = -40858.337029694,
					["x"] = 43885.130293613,
				}, -- end of ["point"]
				["groupId"] = 44,
				["y"] = -40858.337029694,
				["coalition"] = "red",
				["groupName"] = "Tunguska 1",
				["type"] = "Dog Ear radar",
				["countryId"] = 0,
				["x"] = 43885.130293613,
				["unitId"] = 153,
				["category"] = "vehicle",
				["unitName"] = "Tunguska 1-1",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [1]
			[2] = 
			{
				["heading"] = 3.210652124164,
				["point"] = 
				{
					["y"] = -41094.488885552,
					["x"] = 43871.208612076,
				}, -- end of ["point"]
				["groupId"] = 44,
				["y"] = -41094.488885552,
				["coalition"] = "red",
				["groupName"] = "Tunguska 1",
				["type"] = "2S6 Tunguska",
				["countryId"] = 0,
				["x"] = 43871.208612076,
				["unitId"] = 155,
				["category"] = "vehicle",
				["unitName"] = "Tunguska 1-2",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [2]
			[3] = 
			{
				["heading"] = 3.210652124164,
				["point"] = 
				{
					["y"] = -40963.524097173,
					["x"] = 44001.328466336,
				}, -- end of ["point"]
				["groupId"] = 44,
				["y"] = -40963.524097173,
				["coalition"] = "red",
				["groupName"] = "Tunguska 1",
				["type"] = "2S6 Tunguska",
				["countryId"] = 0,
				["x"] = 44001.328466336,
				["unitId"] = 156,
				["category"] = "vehicle",
				["unitName"] = "Tunguska 1-3",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [3]
			[4] = 
			{
				["heading"] = 3.210652124164,
				["point"] = 
				{
					["y"] = -40704.129322773,
					["x"] = 44000.483532217,
				}, -- end of ["point"]
				["groupId"] = 44,
				["y"] = -40704.129322773,
				["coalition"] = "red",
				["groupName"] = "Tunguska 1",
				["type"] = "2S6 Tunguska",
				["countryId"] = 0,
				["x"] = 44000.483532217,
				["unitId"] = 157,
				["category"] = "vehicle",
				["unitName"] = "Tunguska 1-4",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [4]
			[5] = 
			{
				["heading"] = 3.210652124164,
				["point"] = 
				{
					["y"] = -40601.892294426,
					["x"] = 43850.085259112,
				}, -- end of ["point"]
				["groupId"] = 44,
				["y"] = -40601.892294426,
				["coalition"] = "red",
				["groupName"] = "Tunguska 1",
				["type"] = "2S6 Tunguska",
				["countryId"] = 0,
				["x"] = 43850.085259112,
				["unitId"] = 158,
				["category"] = "vehicle",
				["unitName"] = "Tunguska 1-5",
				["playerCanDrive"] = false,
				["country"] = "russia",
				["skill"] = "Average",
			}, -- end of [5]
		}, -- end of ["units"]
		["coalition"] = "red",
		["groupId"] = 44,
		["category"] = "vehicle",
		["countryId"] = 0,
		["startTime"] = 0,
		["task"] = "Ground Nothing",
		["hidden"] = false,
	}, -- end of ["Tunguska 1"]
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
					["y"] = -41899.249844352,
					["x"] = 44512.507304972,
				}, -- end of ["point"]
				["groupId"] = 9,
				["y"] = -41899.249844352,
				["coalition"] = "red",
				["groupName"] = "ZU-1",
				["type"] = "Ural-375 ZU-23",
				["countryId"] = 0,
				["x"] = 44512.507304972,
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
					["y"] = -41896.642265633,
					["x"] = 44470.044633642,
				}, -- end of ["point"]
				["groupId"] = 9,
				["y"] = -41896.642265633,
				["coalition"] = "red",
				["groupName"] = "ZU-1",
				["type"] = "ZSU-23-4 Shilka",
				["countryId"] = 0,
				["x"] = 44470.044633642,
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
}