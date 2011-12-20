#!/bin/sh
cd "$TARGET_BUILD_DIR/$TARGET_NAME.kext/Contents"
mkdir PlugIns > /dev/null 2>&1
rm -R PlugIns/Feedback360.plugin > /dev/null 2>&1
echo "$SRCROOT/../Feedback360/build/Deployment/Feedback360.bundle"
cp -R "$SRCROOT/../Feedback360/build/Deployment/Feedback360.bundle" PlugIns/Feedback360.plugin
# Renaming extension from bundle to a plugin? Could be naughty.
