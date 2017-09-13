removing
remove: oldObject ifAbsent: anExceptionBlock
	oldObject ifNil: [ "there is some oddity when instantiating metamodel" ^ self ].
	(collection includes: oldObject)
		ifFalse: [ ^ anExceptionBlock value ].
	self removeOppositeFrom: oldObject.
	collection remove: oldObject ifAbsent: [  ]