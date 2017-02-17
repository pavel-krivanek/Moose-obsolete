positioning
reset
	prePeekStreamPosition := nil.
	peekChar := nil.
	postByteOrderMarkStreamPosition
		ifNil: [stream reset]
		ifNotNil: [stream position: postByteOrderMarkStreamPosition].