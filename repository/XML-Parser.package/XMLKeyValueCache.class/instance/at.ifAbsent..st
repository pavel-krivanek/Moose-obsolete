accessing
at: aKey ifAbsent: aBlock
	^ self critical: [
		self collection
			at: aKey
			ifAbsent: aBlock]