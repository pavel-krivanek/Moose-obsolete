accumulate
accumulate: aValue withIndex: anIndex
	
	size := size + 1.
	^(value = (value := accumulateBlock value: value value: aValue))
		ifFalse: [index := anIndex]