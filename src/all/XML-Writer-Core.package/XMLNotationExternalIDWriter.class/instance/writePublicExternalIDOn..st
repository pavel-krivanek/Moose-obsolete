writing
writePublicExternalIDOn: aWriter
	aWriter
		nextPutAll: 'PUBLIC';
		space;
		writeUnescapedString: self publicID.
	"the system ID is optional with notation public IDs"
	self hasSystemID
		ifTrue: [
			aWriter
				space;
				writeUnescapedString: self systemID].