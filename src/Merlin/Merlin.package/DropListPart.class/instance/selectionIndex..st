list control
selectionIndex: anObject
	"Set the value of selectionIndex"

	selectionIndex := anObject.
	self hasChanged .
	self changed: #selectionIndex