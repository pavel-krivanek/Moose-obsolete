configuring
on: anObject1 startWithout: anObject2
	super on: anObject1 startWithout: anObject2.

	onPickNextAction := [ 
		current := objectsToTraverse removeFirst.
		isActionAppliedOnCurrent notNil
			ifTrue: [ isActionAppliedOnCurrent := true. onPickNextAction := [ current := objectsToTraverse removeFirst ] ]
			ifFalse: [ isActionAppliedOnCurrent := false ] ].
	isActionAppliedOnCurrent := nil