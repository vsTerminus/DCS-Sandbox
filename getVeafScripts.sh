#!/bin/bash


# DCS Mission Editor and LUA Tables being what they are, even if you extract a .miz file and try to add it to git, each time you modify the mission in the DCS Mission Editor you will find the tables get more or less "Scrambled". This is because they aren't sorted, so every time you save they get shuffled around.

# The nice folks at VEAF have written some pretty awesome scripts to deal with that problem by indexing and sorting all the tables found in the mission file so that when you want to make a change to a mission file your git diffs and commit logs are actually useful. It also helps keep incremental commit sizes down.

# Rather than reinvent the wheel, I'm using two scripts from veaf. I don't need their whole suite, some of it is pretty specific for their missions and I have my own plans for that stuff. But I am going to use two of their scripts:

# 1. veafMissionNormalizer.lua
# 2. veafMissionEditor.lua

# The first one requires the second one, so we need to have both.
# These scripts will let us export miz files in a way that is functional for git.


# You have a few options: 
# 1. Manually clone the repo and copy the files out of src/scripts/veaf/: https://github.com/VEAF/VEAF-Mission-Creation-Tools.git
# 2. Manually download the files from here: https://github.com/VEAF/VEAF-Mission-Creation-Tools/tree/master/src/scripts/veaf
# 3. Use this script to directly grab the two scripts mentioned above. Note: Requires cURL to be installed and found in your path.

curl -o veafMissionNormalizer.lua https://raw.githubusercontent.com/VEAF/VEAF-Mission-Creation-Tools/master/src/scripts/veaf/veafMissionNormalizer.lua
curl -o veafMissionEditor.lua https://raw.githubusercontent.com/VEAF/VEAF-Mission-Creation-Tools/master/src/scripts/veaf/veafMissionEditor.lua
