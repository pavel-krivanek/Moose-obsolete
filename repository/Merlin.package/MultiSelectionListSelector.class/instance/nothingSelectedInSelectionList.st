selection list control
nothingSelectedInSelectionList

	selectionListSelections values detect: [:each | each = true] ifNone: [^true].
	^ false. 