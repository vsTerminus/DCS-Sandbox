# Version Info
BUILD_DATE:=$(shell date --iso-8601)
BUILD_NUMBER_FILE=VERSION

# List of lua files to merge
LUAS_FILE=lua.txt
LUAS=$(shell cat $(LUAS_FILE))

# List of sandbox missions
MIZ_FILE=sandboxes.txt
MIZ=$(shell cat $(MIZ_FILE))

# Where are our unpacked miz files?
MIZ_DIR=mission_files

# What is the path inside the miz files where our scripts go?
ZIP_DIR=l10n/DEFAULT

# Where do we write the file?
BUILD_DIR=build
#BUILD_FILE:=sandbox_$(BUILD_DATE)_r$(BUILD_NUMBER).lua
# A simple name like this allows us to update and replace the old file in the .miz without needing to change the trigger.
BUILD_FILE=sandbox.lua

# Support file for changing time of day and naming the resulting .miz files appropriately
TOD_FILE=time_of_day

# This is the default command when you run "make"
# Since this is all a little unorthodox I figured this might help
help:
	@echo "Options are:"
	@echo "	'clean'"
	@echo "		- Remove compiled lua file from /build" 
	@echo " "
	@echo "	'pack'"
	@echo "		- Package the loose folders back into .miz files"
	@echo "		- Do this when you haven't made any changes and just want to (re-)generate the .miz files"
	@echo " "
	@echo " 'pack_all'"
	@echo "     - Also creates .miz files for different times of day; Morning, Noon, Evening, and Night"
	@echo " "
	@echo "	'unpack'"
	@echo "		- Unpack and normalize all .miz files into the mission files folder"
	@echo " "
	@echo "	'repack'  - Unpack and repack the files."
	@echo "		- Unpack and repack the files."
	@echo "		- Do this if you have modified the missions in the Mission Editor but haven't made any script changes."
	@echo " "
	@echo "	'build'"
	@echo "		- Compile lua scripts into sandbox.lua and put it in the build folder"
	@echo " "
	@echo "	'install'"
	@echo "		- Build sandbox.lua"
	@echo "		- Install sandbox.lua into all sandbox missions listed in sandboxes.txt"
	@echo "		- Repack the missions"
	@echo "		- Do this when you have made script changes but not mission editor changes."
	@echo " "
	@echo "	'full'"
	@echo "		- Unpack + Install"
	@echo "		- Do this if you have made both script and mission editor changes."
	@echo " "
	@echo "	'tag'"
	@echo "		- Tag the latest commit with the current version"
	@echo " "
	@echo "	'commit'"
	@echo "		- full install + commit + tag"
	@echo " "
	@echo "	'release'"
	@echo "		- commit + zip the compiled sandbox.lua file for uploading as a new release."



#### These functions are intended to be called

clean: clean_build

pack: zip

pack_all: zip_all

unpack: unzip normalize

repack: unpack pack

repack_all: unpack pack_all

build: clean_build merge_luas append_version

install: build update_sandboxes pack

full: unpack install

tag: tag_commit

commit: new_commit tag_commit

release: pack_all zip_release


#### Don't call anything below this line directly unless you know what you're doing.

zip_release:
	@echo "Zipping built sandbox.lua file"
	@cd build ; \
	for miz in $(MIZ) ; do \
		zip $$miz-$$(cat ../$(BUILD_NUMBER_FILE)).zip $$miz*.miz ; \
	done

new_commit:
	@echo "Comitting all current changes"
	git commit -a

tag_commit:
	@echo Tagging last commit with current version
	@git tag -sa $$(cat $(BUILD_NUMBER_FILE)) -m "Build Number $$(cat $(BUILD_NUMBER_FILE))"

append_version: version_bump
	@echo Appending Version Info
	@printf	'%s\n%s\n%s\n%s\n%s\n' \
		"local loadedMsg = {}" \
		"loadedMsg.text = 'Loaded Sandbox Version $$(cat $(BUILD_NUMBER_FILE)) ($(BUILD_DATE))'" \
		"loadedMsg.displayTime = 5" \
		"loadedMsg.msgFor = {coa = {'all'}}" \
		"mist.message.add(loadedMsg)" \
		"-- Temporary Fallback Method" \
		"trigger.action.outText(loadedMsg.text, loadedMsg.displayTime)" \
		>> $(BUILD_DIR)/$(BUILD_FILE)

version_bump:
	@echo Incrementing Version
	@if ! test -f $(BUILD_NUMBER_FILE); then echo 0 > $(BUILD_NUMBER_FILE); fi
	@echo $$(($$(cat $(BUILD_NUMBER_FILE)) + 1)) > $(BUILD_NUMBER_FILE)

merge_luas:
	@echo Merging Lua Files
	@mkdir -p $(BUILD_DIR)
	@ls -1 $(LUAS) | xargs -n1 awk \
	'FNR==1{print "---------- BEGIN",FILENAME,"----------\n"} \
	END{print "\n---------- END",FILENAME,"----------\n"} \
	{print}' >> $(BUILD_DIR)/$(BUILD_FILE)

clean_build:
	@echo Cleaning build directory
	@rm -f $(BUILD_DIR)/*.lua
	@rm -f $(BUILD_DIR)/*.miz


update_sandboxes:
	@echo "Installing 'sandbox.lua' Version $$(cat $(BUILD_NUMBER_FILE)) to Sandbox Missions"
	@for miz in $(MIZ) ; do \
		echo "	$$miz" ; \
		cp "$(BUILD_DIR)/$(BUILD_FILE)" "$(MIZ_DIR)/$$miz/$(ZIP_DIR)/$(BUILD_FILE)" ; \
	done

unzip:
	@echo "Unpacking .miz files"
	@ls -1 ./*.miz | xargs -n1 basename -s ".miz" | xargs -I fileName unzip -qod "./$(MIZ_DIR)/fileName" "fileName.miz"

normalize:
	@echo "Normalizing mission tables"
	@ls -1 $(MIZ_DIR) | xargs -I {} -n1 lua veafMissionNormalizer.lua "$(MIZ_DIR)/{}"

# 0300 => 10800
night:
	@echo "Updating mission times to 3 AM"
	@ls -1 $(MIZ_DIR)/Sandbox_*/mission | xargs -n1 sed -i 's/18600\|33300\|32400\|21600\|69000\|61800\|63000\|65400\|43200/10800/'
	@ls -1 $(MIZ_DIR)/Sandbox_*/mission | xargs -n1 unix2dos
	@echo "night" > $(TOD_FILE)

# Syria: 0510 => 18600
# Channel: 0915 => 33300
# Caucasus: 0630 => 23400
# Persian Gulf: 0600 => 21600
morning:
	@echo "Updating mission times to just-before-sunrise"
	@ls -1 $(MIZ_DIR)/Sandbox_Syria/mission | xargs -n1 sed -i 's/10800\|43200\|69000/18600/'
	@ls -1 $(MIZ_DIR)/Sandbox_The_Channel/mission | xargs -n1 sed -i 's/10800\|43200\|61800/33300/'
	@ls -1 $(MIZ_DIR)/Sandbox_Caucasus/mission | xargs -n1 sed -i 's/10800\|43200\|63000/23400/'
	@ls -1 $(MIZ_DIR)/Sandbox_Persian_Gulf/mission | xargs -n1 sed -i 's/10800\|43200\|65400/21600/'
	@ls -1 $(MIZ_DIR)/Sandbox_*/mission | xargs -n1 unix2dos
	@echo "morning" > $(TOD_FILE)

# Syria: 1910 => 69000
# Channel: 1710 => 61800
# Caucasus: 1910 => 69000
# Persian Gulf: 1810 => 65400
evening:
	@echo "Updating mission times to just-before-sunset"
	@ls -1 $(MIZ_DIR)/Sandbox_Syria/mission | xargs -n1 sed -i 's/10800\|43200\|18600/69000/'
	@ls -1 $(MIZ_DIR)/Sandbox_The_Channel/mission | xargs -n1 sed -i 's/10800\|43200\|33300/61800/'
	@ls -1 $(MIZ_DIR)/Sandbox_Caucasus/mission | xargs -n1 sed -i 's/10800\|43200\|32400/63000/'
	@ls -1 $(MIZ_DIR)/Sandbox_Persian_Gulf/mission | xargs -n1 sed -i 's/10800\|43200\|21600/65400/'
	@ls -1 $(MIZ_DIR)/Sandbox_*/mission | xargs -n1 unix2dos
	@echo "evening" > $(TOD_FILE)

# 1200 => 43200
noon:
	@echo "Updating mission times to Noon"
	@ls -1 $(MIZ_DIR)/Sandbox_*/mission | xargs -n1 sed -i 's/18600\|33300\|32400\|21600\|69000\|61800\|63000\|65400\|10800/43200/'
	@ls -1 $(MIZ_DIR)/Sandbox_*/mission | xargs -n1 unix2dos
	@echo "noon" > $(TOD_FILE)

zip_night: night
	@$(MAKE) zip_tod
	@mv *_night.miz $(BUILD_DIR)

zip_morning: morning
	@$(MAKE) zip_tod
	@mv *_morning.miz $(BUILD_DIR)

zip_evening: evening
	@$(MAKE) zip_tod
	@mv *_evening.miz $(BUILD_DIR)

zip_noon: noon
	@$(MAKE) zip_tod
	@mv *_noon.miz $(BUILD_DIR)

zip_all: zip zip_night zip_morning zip_evening zip_noon

zip_tod:
	@echo "Packing .miz files for different times of day"
	@cd $(MIZ_DIR) ; \
	for mission in Sandbox_*/ ; do \
		echo "	$${mission%/}_$$(cat ../$(TOD_FILE))" ; \
		cd $$mission ; \
		7z a -tzip $${mission%/}_$$(cat ../../$(TOD_FILE)).miz *; \
		mv *.miz ../../ ; \
		cd .. ; \
	done

zip:
	@echo "Packing main .miz files"
	@cd $(MIZ_DIR) ; \
	for mission in */ ; do \
		echo "	$${mission%/}" ; \
		cd $$mission ; \
		7z a -tzip $${mission%/}.miz *; \
		mv *.miz ../../ ; \
		cd .. ; \
	done
