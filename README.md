# DCS Sandbox

![My License](https://img.shields.io/github/license/vsTerminus/DCS-Sandbox?label=Repo%20License) ![MIST License](https://img.shields.io/github/license/mrSkortch/MissionScriptingTools?label=MIST%20License) ![VEAF License](https://img.shields.io/github/license/VEAF/VEAF-Mission-Creation-Tools?label=VEAF%20License) ![DCS-Scripts License](https://img.shields.io/github/license/wheelyjoe/DCS-Scripts?label=DCS-Scripts%20License)


![Build Version](https://img.shields.io/github/v/tag/vsTerminus/DCS-Sandbox?label=Latest%20Build)

These scripts and maps are designed to provide "Zeus-style" sandbox missions where you can spawn a variety of hostile and friendly units anywhere on the map using a combination of MarkPoints and the F10 Radio Menu.

The goal is to provide a way to 

sandbox.lua includes a modified version of MIST, so it is incompatible with vanilla MIST (unless you remove "00_mist.lua" from lua.txt and rebuild sandbox.lua)

## Where are the missions???

DCS Mission Files (*.miz) are basically just zip files containing everything needed to run your mission: Unit informtation, map zones, triggers, victory conditions, sound files, custom scripts, etc. You can unpack and re-pack the files using an archive tool such as 7zip and see for yourself.

The unpacked, loose files are git-friendly; They can be compared when they change and they won't balloon the size of the repository when they do, unlike a zipped .miz file. The downside is, **this means you have to create the .miz files yourself**.

## Generating .miz files

### Windows

Simply run the `pack.cmd` file and it will package up the loose mission files into zipped .miz files which DCS can read.

Note: Requires [7-zip](https://www.7-zip.org/download.html)! If not installed in the default location (`C:\Program Files\7-zip`) you will need to edit `pack.cmd` in a text editor and change the location on line 6

### UNIX / Cygwin

As long as your shell can find the `make` and `zip` commands you should be able to run `make pack` and it will package up the loose files into .miz files.

## Unpacking .miz files

### Windows

Currently no way to do this. I will create an unpack.cmd file eventually.

### UNIX / Cygwin

You will need the following in your shell:
- make
- unzip
- lua

First, this project relies on scripts from VEAF. Without them this would not be possible.


## All Makefile targets

You will need the following to take full advantage of Makefile targets:
- make
- zip/unzip
- lua

In the project root folder run "make" for a list of options:

    'clean'
            - Remove compiled lua file from /build

    'pack'
            - Package the loose folders back into .miz files
            - Do this when you haven't made any changes and just want to (re-)generate the .miz files

    'unpack'
            - Unpack and normalize all .miz files into the mission files folder

    'repack'  - Unpack and repack the files.
            - Unpack and repack the files.
            - Do this if you have modified the missions in the Mission Editor but haven't made any script changes.

    'build'
            - Compile lua scripts into sandbox.lua and put it in the build folder

    'install'
            - Build sandbox.lua
            - Install sandbox.lua into all sandbox missions listed in sandboxes.txt
            - Repack the missions
            - Do this when you have made script changes but not mission editor changes.

    'full'
            - Unpack + Install
            - Do this if you have made both script and mission editor changes.

# COPYRIGHT NOTICE

This software is Copyright (c) 2020 by vsTerminus

Unless specified below, the work is licensed under

	GNU General Public License v3.0	


`00_mist.lua` is a fork of [MIssion Scripting Tools (MIST)](/mrSkortch/MissionScriptingTools) and is Copyright (c) 2020 mrSkortch (Grimes)

This is free software, licensed under

	GNU General Public License v3.0



`veafMissionEditor.lua` and `veafMissionNormalizer.lua` are used from [VEAF-Mission-Creation-Tools](/VEAF/VEAF-Mission-Creation-Tools) 
and are Copyright (c) 2014 Nicolas "MagicBra" VERRIEST

This is free software, licensed under

	Apache License 2.0


`SplashDamage.lua` is from [DCS-Scripts](https://github.com/wheelyjoe/DCS-Scripts) and is Copyright (c) 2021 wheelyjoe

This is free software, licensed under

    MIT License
