#/usr/bin/sh

# First run Shakespeer.
# /Applications/ShakesPeer.app/Contents/Resources/sphashd -w /Users/samt/Library/Application Support/ShakesPeer -d info &
/Applications/ShakesPeer.app/Contents/MacOS/ShakesPeer -d info &

echo "ShakesPeer was successfully initialized."
echo "Now running the Dtella daemon . . ."
echo ""

# Run the Dtella daemon.
/Applications/Dtella.app/Contents/MacOS/dtella -psn_0_1097996

