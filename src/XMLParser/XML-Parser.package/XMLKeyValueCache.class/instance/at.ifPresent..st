accessing
at: aKey ifPresent: aBlock
	^ self critical: [
		"Gemstone's at:ifAbsentPut: does not use cull:"
		aBlock cull:
			(self collection
				at: aKey
				ifAbsent: [^ nil])]