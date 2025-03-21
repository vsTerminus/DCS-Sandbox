-- This file just contains the array of unit groups that can be spawned via the radio menu.
-- The idea is just to keep the clutter down in the radio menu file, which will contain all of the actual code and logic.

-- You must create groups matching the names found below. Ideally the description field should accurately describe the group's composition.
-- Location isn't important, as spawning will be done via map mark points.

-- For all entries below,
-- 		The array key is what will appear in the F10 menu (Keep it short!)
--		'name' must match the group name in the DCS Mission Editor
--		'description' is a string of text that will be displayed when the group spawns
--		'sound' is OPTIONAL, and should be the filename of the sound you want to play when the group spawns.

-- For sounds you must include the sound file in the mission somehow or it won't be able to play.
-- The easiest way to do this is to make a new trigger which does "SOUND TO COUNTRY" on mission start.
-- You can simply send each sound file to a country like Abkhazia and it will be included in the .miz file for use by scripting as well.

-- The array is broken up into categories. Each category can have a max of TEN spawnable groups.
-- If you exceed ten you'll need to make another category and update the radio menu lua as well.

spawnable = {}

-- "Unarmed" category
spawnable.unarmed = {
	['12x Unarmed Fuel Trucks'] = {
		name = 'FUEL-1',
		description = '12x ATZ-10 Fuel Trucks',
		smoke = 'red',
		relative = 'false',
		action = 'clone',
	},
    ['4x C-101EB at 10,000ft'] = {
        name = 'C-101 Medium',
        description = '4x C-101EB Aviojets at 10,000ft',
        smoke = false,
        relative = true,
        action = 'clone',
    },
    ['4x C-101EB at 20,000ft'] = {
        name = 'C-101 High',
        description = '4x C-101EB Aviojets at 20,000ft',
        smoke = false,
        relative = true,
        action = 'clone',
    },
    ['4x Tu-95MS at 10,000ft'] = {
        name = 'Tu-95 Medium-1',
        description = '4x Tu-95MS Bombers at 10,000ft',
        smoke = false,
        relative = true,
        action = 'clone',
    },
    ['4x Tu-95MS at 20,000ft'] = {
        name = 'Tu-95 High-1',
        description = '4x Tu-95MS Bombers at 20,000ft',
        smoke = false,
        relative = true,
        action = 'clone',
    },
}

-- "Armor" category
spawnable.armor = {
	['4x BTR-80s'] = {
		name = 'BTR-1',
		description = '4x APC BTR-80s',
		sound = 'tvurdy00.wav', -- Alright, bring it on!
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['4x T72 MBTs'] = {
		name = 'T72-1',
		description = '4x T72 Main Battle Tanks',
		sound = 'ttardy00.wav', -- Ready to roll out!
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Air Defences" category
spawnable.airdefences = {
	['SA-6 Kub SAM Site'] = {
		name = 'KUB-1',
		description = 'SA-6 Gainful (2k12 Куб) with 4 Launchers, 1 Straight Flush Radar, 1 P-19 EWR',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['ZU-23 Shilkas x4'] = {
		name = 'Shilka 1',
		description = '4x ZU-23 Shilkas with, 1 Battery Command Vehicle',
		sound = 'tfbwht00.wav', -- Fired up
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['SA-10 Grumble SAM Site'] = {
		name = 'Grumble-1',
		description = 'SA-10 Grumble (S-300) with a Command Post, Big Bird EWR, Clamshell TAR, Flap Lid TER, and 8 Launchers',
		sound = 'TAdUpd07.wav', -- Nuclear Missile Ready
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['SA-8 Osa SAM Site'] = {
		name = 'OSA-1',
		description = '4x SA-8 "Osa" IR SAM Sites',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
    ['SA-2 Low Blow SAM Site'] = {
        name = 'SA-2 1',
        description = 'SA-2 with 1 Fansong TTR, 1 1L13 EWR, and 6 Launchers',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
        smoke = 'red',
        relative = false,
        action = 'clone',
    },
    ['SA-3 Fansong SAM Site'] = {
        name = 'SA-3 1',
        description = 'SA-3 with 1 Low Blow TTR, 1 P-19 EWR, and 4 Launchers',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
        smoke = 'red',
        relative = false,
        action = 'clone',
    },
    ['SA-11 Buk SAM Site'] = {
        name = 'Buk 1',
        description = 'SA-11 with 1 Battery Command, 1 Snow Drift TAR, and 6 TELAR Launchers',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
        smoke = 'red',
        relative = false,
        action = 'clone',
    },
    ['SA-13 Strela SAM Site'] = {
        name = 'Strela 1',
        description = 'SA-13 with 1 Battery Command and 4 TELAR Launchers',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
        smoke = 'red',
        relative = false,
        action = 'clone',
    },
    ['SA-15 Tor SAM Site'] = {
        name = 'Tor 1',
        description = 'SA-15 with 1 Battery Command and 4 TLAR Launchers',
        sound = 'tvkpss01.wav', -- I have ways of blowing things up
        smoke = 'red',
        relative = false,
        action = 'clone',
    },
    ['SA-19 Tunguska SAM Site'] = {
        name = 'Tunguska 1',
        description = 'SA-19 with 1 Battery Command and 4 TELAR Launchers',
        sound = 'tvkpss01.wav', -- I have ways of blowing things up
        smoke = 'red',
        relative = false,
        action = 'clone',
    },
}

-- "Modern Fighters" category
spawnable.fighters = {
	['2x MiG-29A IR'] = {
		name = 'MIG-1',
		description = 'Two MiG-29As armed with IR Missiles',
		relative = false,
		action = 'clone',
	},
	['2x MiG-29A Guns'] = {
		name = 'MIG-2',
		description = 'Two MiG-29As armed with guns',
		relative = false,
		action = 'clone',
	},
}

-- Ace single-ship fighters for BFM practice
spawnable.bfm = {
    ['MiG-29A'] = {
        name = 'MiG-29A BFM 1',
        description = 'One MiG-29A "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['C-101CC'] = {
        name = 'C-101CC BFM 1',
        description = 'One C-101CC "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['F/A-18C'] = {
        name = 'F/A-18C BFM 1',
        description = 'One F/A-18C "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['Su-27'] = {
        name = 'Su-27 BFM 1',
        description = 'One Su-27 "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['MiG-15bis'] = {
        name = 'MiG-15bis BFM 1',
        description = 'One MiG-15bis "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['MiG-28'] = {
        name = 'MiG-28 BFM 1',
        description = 'One "MiG-28" "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['F-14A'] = {
        name = 'F-14A BFM 1',
        description = 'One F-14A "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['F-14B'] = {
        name = 'F-14B BFM 1',
        description = 'One F-14B "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
}

spawnable.warbirdbfm = {
    ['Fw 190 A-8'] = {
        name = 'Fw 190 A-8 BFM 1',
        description = 'One Fw 190 A-8 "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['Fw 190 D-9'] = {
        name = 'Fw 190 D-9 BFM 1',
        description = 'One Fw 190 A-8 "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['Bf 109 K-4'] = {
        name = 'Bf 109 K-4 BFM 1',
        description = 'One Bf 109 K-4 "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['P-47D-30'] = {
        name = 'P-47D-30 BFM 1',
        description = 'One P-47D-30 "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['P-47D-40'] = {
        name = 'P-47D-40 BFM 1',
        description = 'One P-47D-40 "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['P-51D-25-NA'] = {
        name = 'P-51D-25-NA BFM 1',
        description = 'One P-51D-25-NA "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['P-51D-30-NA'] = {
        name = 'P-51D-30-NA BFM 1',
        description = 'One P-51D-30-NA "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['Spitfire LF Mk. IX'] = {
        name = 'Spitfire LF Mk. IX BFM 1',
        description = 'One Spitfire LF Mk. IX "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
    ['Spitfire LF Mk. IX CW'] = {
        name = 'Spitfire LF Mk. IX CW BFM 1',
        description = 'One Spitfire LF Mk. IX CW "Ace" pilot armed with guns',
        relative = false,
        action = 'clone',
    },
}

-- "Warbird" category
spawnable.warbirds = {
	['2x Fw 190-D9'] = {
		name = 'D9-1',
		description = 'Two Fw 190-D9s',
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Infantry" category
spawnable.infantry = {
	['10x Russian Infantry'] = {
		name = 'Infantry-1',
		description = 'Ten Russian Infantry',
		sound = 'tmawht03.wav', -- Gimme somethin to shoot
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['20x Russian Infantry'] = {
		name = 'Infantry-2',
		description = 'Twenty Russian Infantry',
		sound = 'tmawht03.wav', -- Gimme somethin to shoot
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Helicopters" category
spawnable.helicopters = {
	['Mi-24V'] = {
		name = 'Hind-1',
		description = 'A Mi-24V Hind Attack Helicopter',
		sound = 'pcowht03.wav',	-- Let us attack
		smoke = false,
		relative = false,
		action = 'clone',
	},
	['Mi-26'] = {
		name = 'Halo-1',
		description = 'A Mi-26 Halo Transport Helicopter',
		--sound = 'pcowht03.wav',	-- Let us attack
		smoke = false,
		relative = false,
		action = 'clone',
	},
	['Ka-50'] = {
		name = 'Hokum-1',
		description = 'A Ka-50 Hokum Attack Helicopter',
		sound = 'pcowht03.wav',	-- Let us attack
		smoke = false,
		relative = false,
		action = 'clone',
	},
	['Mi-28N'] = {
		name = 'Havoc-1',
		description = 'A Mi-28N Havoc Attack Helicopter',
		sound = 'pcowht03.wav',	-- Let us attack
		smoke = false,
		relative = false,
		action = 'clone',
	},
	['Mi-8MTV2'] = {
		name = 'Hip-1',
		description = 'A Mi-8MTV2 Transport Helicopter',
		--sound = 'pcowht03.wav',	-- Let us attack
		smoke = false,
		relative = false,
		action = 'clone',
	},
}

-- "Boats" category
spawnable.boats = {
	['Kirov'] = {
		name = 'Kirov-1',
		description = 'CGN 1144.2 Pyotr Velikiy Kirov',
		sound = 'tbardy00.wav', -- Cattlebruiser Operational
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['Kuznetsov'] = {
		name = 'Kuznetsov-1',
		description = 'CV 1143.5 Admiral Kuznetsov (2017)',
		sound = 'pcaRdy00.wav', -- Carrier has arrived
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['4x Cargo Ships'] = {
		name = 'Cargo-1',
		description = '4x Unarmed Cargo Ships',
		sound = 'pprRdy00.wav',
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "AWACS" category
spawnable.awacs = {
	['A-50'] = {
		name = 'A-50 1',
		description = 'A-50 AWACS at 35,000ft',
		sound = 'pabYes01.wav',
		smoke = false,
		relative = true,
		action = 'clone',
	},
}
		

-- "AWACS" friendly category
spawnable.fawacs = {
	['E-3A Sentry'] = {
		name = 'E-3A 1',
		description = 'E-3A Sentry at 35,000ft. Contact "Overlord" on 241.000',
		sound = 'pabRdy00.wav', -- Warp Field Stabilized
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['E-2D Hawkeye'] = {
		name = 'E-2D 1',
		description = 'E-2D Hawkeye at 30,000ft. Contact "Magic" on 242.000',
		sound = 'pabPss00.wav', -- We sense a soul in search of answers
		smoke = false,
		relative = true,
		action = 'respawn',
	},
}

-- "Boats" friendly category
spawnable.fboats = {
	['CVN-71 Theodore Roosevelt'] = {
		name = 'CVN-71 Theodore Roosevelt',
		description = 'CVN-71 Theodore Roosevelt -- ATC 251, TCN 71, ICLS 1',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CVN-72 Abraham Lincoln'] = {
		name = 'CVN-72 Abraham Lincoln',
		description = 'CVN-72 Abraham Lincoln -- ATC 252, TCN 72, ICLS 2',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CVN-73 George Washington'] = {
		name = 'CVN-73 George Washington',
		description = 'CVN-73 George Washington -- ATC 253, TCN 73, ICLS 3',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CVN-74 John C. Stennis'] = {
		name = 'CVN-74 John C. Stennis',
		description = 'CVN-74 John C. Stennis -- ATC 254, TCN 74, ICLS 4',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CVN-75 Harry S. Truman'] = {
		name = 'CVN-75 Harry S. Truman',
		description = 'CVN-75 Harry S. Truman -- ATC 255, TCN 75, ICLS 5',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['LHA-1 Tarawa'] = {
		name = 'LHA-1 Tarawa',
		description = 'LHA-1 Tarawa -- ATC 256, TCN 76, ICLS 6',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CV 1143.5 Admiral Kuznetsov(2017)'] = {
		name = 'CV 1143.5 Admiral Kuznetsov(2017)',
		description = 'CV 1143.5 Admiral Kuznetsov(2017) -- ATC 257',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CV 1143.5 Admiral Kuznetsov'] = {
		name = 'CV 1143.5 Admiral Kuznetsov',
		description = 'CV 1143.5 Admiral Kuznetsov -- ATC 258',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
}

-- "Tankers" friendly category
spawnable.ftankers = {
	['Basket - KC-130 @ 15k, 243.0'] = {
		name = 'Texaco 1',
		description = 'Texaco 1-1 - KC-130 (Basket) Tanker, 255KIAS at 15,000ft. Contact on 243.0, TCN 43X',
		sound = 'TDrPss01.wav', -- In case of a water landing, you may be used as a flotation device
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Basket - KC-135MPRS @ 25k, 244.0'] = {
		name = 'Texaco 2',
		description = 'Texaco 2-1 - KC-135MPRS (Basket) Tanker, 270KIAS at 25,000ft. Contact on 244.0, TCN 44X',
		sound = 'TDrPss02.wav', -- To hurl chunks, please use the vomit bag in front of you
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Basket - S-3B @ 25k, 245.0'] = {
		name = 'Texaco 3',
		description = 'Texaco 3-1 - S-3B (Basket) Tanker, 270KIAS at 25,000ft. Contact on 245.0, TCN 45X',
		sound = 'TDrPss03.wav', -- Keep your arms and legs inside
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Basket - Il-78M @ 25k, 246.0'] = {
		name = 'Texaco 4',
		description = 'Callsign 246 - Il-78M (Basket) Tanker, 270KIAS at 25,000ft. Contact on 246.0, No TCN',
		sound = 'tvkpss00.wav', -- This is very interesting, but stupid
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Boom - KC-135 @ 25k, 247.0'] = {
		name = 'Shell 1',
		description = 'Shell 1-1 - KC-135 (Boom) Tanker, 270KIAS at 25,000ft. Contact on 247.0, TCN 47X',
		sound = 'TDrYes00.wav', -- In the pipe, 5x5
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Boom - KC-135 @ 10k, 248.0'] = {
		name = 'Shell 2',
		description = 'Shell 2-1 - KC-135 (Boom) Tanker, 220KIAS at 10,000ft. Contact on 248.0, TCN 48X',
		sound = 'TDrYes04.wav', -- Strap yourselves in boys
		smoke = false,
		relative = true,
		action = 'respawn',
	},
}

-- "Armor" Friendly Category
spawnable.farmor = {
	['4x M1A1 Abrams'] = {
		name = 'Abrams-1',
		descriptions = 'Four M1A1 Abrams MBTs',
		-- sound = '',
		smoke = false,
		relative = true,
		action = 'clone',
	},
}

-- "Infantry" Friendly Category
spawnable.finfantry = {
	['20x Infantry M4'] = {
		name = 'Infantry-M4-1',
		description = 'Twenty Infantry M4 Units',
		-- sound = '',
		smoke = false,
		relative = true,
		action = 'clone',
	},
}

