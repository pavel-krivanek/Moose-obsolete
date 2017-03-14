configuring
on: anObject1 startWith: anObject2
	super on: anObject1 startWith: anObject2.

	onPickNextAction := [ 
		current := objectsToTraverse removeFirst ].
	isActionAppliedOnCurrent := true