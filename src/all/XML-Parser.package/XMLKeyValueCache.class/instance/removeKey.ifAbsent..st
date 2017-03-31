removing
removeKey: aKey ifAbsent: aBlock
	^ self critical: [
		self collection
			removeKey: aKey
			ifAbsent: aBlock]