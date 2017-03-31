configuring
on: anObject startWithAll: aCollection
	super on: anObject startWithAll: aCollection.
	
	onPickNextAction := [ 
		current := objectsToTraverse removeFirst ].
	isActionAppliedOnCurrent := true