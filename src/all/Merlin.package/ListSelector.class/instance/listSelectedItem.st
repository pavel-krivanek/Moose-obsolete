initial list control
listSelectedItem
	"Answer the currently selected item or nil if none."

	^self listSelectionIndex = 0 
		ifTrue: [nil]
		ifFalse: [self list at: self listSelectionIndex]