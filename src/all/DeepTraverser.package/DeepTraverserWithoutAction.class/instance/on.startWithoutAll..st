configuring
on: anObect startWithoutAll: aCollection
	" traverse anObject. start traversal using aCollection but do not apply action on items of aCollection "
	initializer := [ self on: anObect startWithoutAll: aCollection ].
	
	" reset everything "
	object := anObect.
	startObject := aCollection asOrderedCollection.
	current := nil.
	previous := nil.
	objectsToTraverse := OrderedCollection new: aCollection size. " traversal  phase 2 check / slow check [reversed for better speed ], quick add "
	objectsTraversed := IdentitySet new: self expectedSize. " traversal phase 1 check / quick check, slow add"
	startObject dtTraverseStartUsing: self.