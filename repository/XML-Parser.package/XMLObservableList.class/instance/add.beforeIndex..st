adding
add: anObject beforeIndex: anIndex
	collection
		add: anObject
		beforeIndex: anIndex.
	self
		afterAdding: anObject
		at: anIndex.
	^ anObject.