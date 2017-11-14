accessing
at: aKey ifPresent: aPresentBlock ifAbsent: anAbsentBlock
	^ attributeDictionary
		at: aKey
		ifPresent: aPresentBlock
		ifAbsent: anAbsentBlock