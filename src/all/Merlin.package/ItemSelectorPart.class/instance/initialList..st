control - initial list 
initialList: anObject 
	"Set the value of list"

	initialList := anObject.
	self changed: #initialList.

	"Here we check that the selectionIndex is updated according the new list size  "
	self initialListIndex > self initialList size ifFalse: [^self].
	self initialListIndex: self initialList size.
	self changed: #initialListIndex