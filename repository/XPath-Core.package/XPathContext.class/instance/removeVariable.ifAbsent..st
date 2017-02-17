removing
removeVariable: aVariable ifAbsent: aBlock
	^ self variables
		removeKey: aVariable
		ifAbsent: aBlock