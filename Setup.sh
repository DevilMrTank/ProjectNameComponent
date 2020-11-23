#!/bin/sh

COCOAPODS=$(which pod)

# Check Pods directory exist, if no, will execute `pod update`.
[ -d Pods ] || ${COCOAPODS} update --verbose --no-repo-update

# Check Makefile exist, if no, will link to real Makefile path.
[ -f "Makefile" ] || ln -sf Pods/SDPSpaceCommander/Scripts/Makefile Makefile

# Check build.sh exist, if no, will link to real build.sh path.
[ -f "build.sh" ] || ln -sf Pods/SDPMobileComponentBuilder/Scripts/build.sh build.sh

# Check build.rb exist, if no, will link to real build.rb path.
[ -f "build.rb" ] || ln -sf Pods/SDPMobileComponentBuilder/Scripts/build.rb build.rb
