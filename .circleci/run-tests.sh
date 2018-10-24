
set -o pipefail & xcodebuild test -workspace iOSTest.xcworkspace -scheme "iOSTest" -destination 'platform=iOS Simulator,OS=10.3.1,name=iPhone 7' -only-testing:iOSTestTests| tee xcodebuild.log | xcpretty

#I added the if statement because CirclCI was giving us a false positive on giving us a pass build, even though it did not run our tests. The logic is that if the tests do not run we then check for the status and exit the build with exit 1. The reason I put echo "BUILD FAILURE" is becasue I want it to be different then what CircleCI is throwing when there's a legit failure, which is "BUILD FAILED"
if [ "${PIPESTATUS[0]}" != "0" ]; then
	echo "BUILD FAILURE"
   exit 1
fi

