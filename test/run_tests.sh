#!/bin/sh

# This should be cleaned up
touch "Foo bar [ab12345].mp4"
touch "Foo bar -ab12345.mp4"
touch "Foo bar ab12345.mp4"
touch "Bar Baz ab12345.mp4"
touch "Bar Baz -ab12345.mp4"

# These should remain untouched
touch "Quz [0000].mp4"
touch "Bar ph0000.mp4"
touch "BarBaz ph0001.mp4"

../bin/ytdl-clean

COUNT=$(find . -name "*.mp4"  | wc -l)

if [ "$COUNT" != 4 ]; then
	echo "Failed $COUNT still remain";
	exit 1;
fi;

echo "Passed";
