initial list control
nothingSelectedInInitialList

	initialListSelections values detect: [:each | each = true] ifNone: [^true].
	
	^false
	
"	1 to: initialList size do: [:index |
		(initialListSelections at: index) = true ifTrue: [^false].
		].
	^ true. "