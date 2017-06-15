private
addNewObject: anObject
	| newElement |
	newElement := self createElementsFor: anObject.
	self addNewElement: newElement.
	self objects at: anObject put: newElement.