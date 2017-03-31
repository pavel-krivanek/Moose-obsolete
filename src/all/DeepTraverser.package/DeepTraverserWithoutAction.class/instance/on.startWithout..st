configuring
on: anObject1 startWithout: anObject2
	" traverse anObject1. start traversal using anObject2 but do not apply action on anObject2 "
	initializer := [ self on: anObject1 startWithout: anObject2 ].
	
	" reset everything "
	object := anObject1.
	startObject := anObject2.
	current := nil.
	previous := nil.
	objectsToTraverse := OrderedCollection new. " traversal  phase 2 check / slow check [reversed for better speed ], quick add "
	objectsTraversed := IdentitySet new: self expectedSize. " traversal phase 1 check / quick check, slow add"
	startObject dtTraverseStartUsing: self.