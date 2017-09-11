reading
readStream: aReadStream for: aFAMIXFileAnchor into: aWriteStream
	^ self new
		readStream: aReadStream;
		writeStream: aWriteStream;
		fileAnchor: aFAMIXFileAnchor;
		read