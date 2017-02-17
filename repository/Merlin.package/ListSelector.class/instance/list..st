initial list control
list: anObject 
	"Set the value of list"

	initialList := anObject.
	self changed: #list.

	"Here we check that the selectionIndex is updated according the new list size  "
	self listSelectionIndex > self list size ifFalse: [^self].
	self packagesListSelectionIndex: self list size.
	self changed: #listSelectionIndex