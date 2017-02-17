writing
writePublicExternalIDOn: aWriter
	aWriter
		nextPutAll: 'PUBLIC';
		space;
		writeUnescapedString: self publicID.
	self hasSystemID
		ifTrue: [
			aWriter
				space;
				writeUnescapedString: self systemID].