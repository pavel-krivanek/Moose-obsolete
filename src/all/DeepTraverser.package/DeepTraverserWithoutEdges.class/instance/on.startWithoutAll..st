configuring
on: anObect startWithoutAll: aCollection
	super on: anObect startWithoutAll: aCollection.
	
	onPickNextAction := [ 
		current := objectsToTraverse removeFirst.
		startObject isEmpty
			ifTrue: [ isActionAppliedOnCurrent := true. onPickNextAction := [ current := objectsToTraverse removeFirst ] ]
			ifFalse: [ isActionAppliedOnCurrent := false. startObject removeFirst. ] ].
	isActionAppliedOnCurrent := nil