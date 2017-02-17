accessing
model: anObject
	model := anObject.
	self root withAllChildrenDo: [:each | each model: anObject ]