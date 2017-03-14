list control
list: anObject
	"Set the value of list"

	list := anObject.
	self changed: #list.
	self changed: #formatedList.
	anObject ifNotEmpty: [
		self selectionIndex: 1
		].
	self selectionIndex ifNotNil: [self hasChanged].