selection list control
selectionListSelectedItem 
	"Answer the currently selected item in the selection list or nil if none."

	^self selectionListSelectionIndex = 0
		ifTrue: [nil]
		ifFalse: [self selectionList at: self selectionListSelectionIndex]