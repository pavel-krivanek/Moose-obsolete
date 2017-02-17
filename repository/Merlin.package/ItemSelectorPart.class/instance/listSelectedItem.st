control - initial list 
listSelectedItem
	"Answer the currently selected item or nil if none."

	^self initialListIndex = 0 
		ifTrue: [nil]
		ifFalse: [self initialList at: self initialListIndex]