control - selection list
selectionListSelectedItem 
	"Answer the currently selected item in the selection list or nil if none."

	^self selectionListIndex = 0
		ifTrue: [nil]
		ifFalse: [self selectionList at: self selectionListIndex]