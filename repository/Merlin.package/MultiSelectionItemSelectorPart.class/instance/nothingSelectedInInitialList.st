control - initial list
nothingSelectedInInitialList

	initialListSelections values detect: [:each | each = true] ifNone: [^true].
	
	^false
	