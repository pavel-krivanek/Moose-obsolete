adding
add: anObject afterIndex: anIndex
	collection
		add: anObject
		afterIndex: anIndex.
	self
		afterAdding: anObject
		at: anIndex + 1.
	^ anObject.