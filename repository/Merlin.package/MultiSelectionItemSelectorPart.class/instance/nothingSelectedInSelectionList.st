control - selection list
nothingSelectedInSelectionList

	selectionListSelections values detect: [:each | each = true] ifNone: [^true].
	^ false. 