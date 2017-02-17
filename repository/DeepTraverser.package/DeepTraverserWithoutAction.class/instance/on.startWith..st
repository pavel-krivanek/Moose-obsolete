configuring
on: anObject1 startWith: anObject2
	" traverse anObject1. start traversal using anObject2 and apply the action on all objects "
	initializer := [ self on: anObject1 startWith: anObject2 ].
	
	" reset everything "
	object := anObject1.
	startObject := anObject2.
	current := nil.
	previous := nil.
	objectsToTraverse := OrderedCollection new. " traversal  phase 2 check / slow check [reversed for better speed ], quick add "
	objectsTraversed := IdentitySet new: self expectedSize. " traversal phase 1 check / quick check, slow add"
	startObject dtTraverseStartUsing: self.