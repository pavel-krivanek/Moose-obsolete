*XML-Writer-Core
writeAttributesOn: aWriter
	self keysDo: [:attributeName |
		aWriter
			writeAttributeName: attributeName
			value: (self at: attributeName ifAbsent: '')]