accessing - model
classesTaggedWith: aSymbol

	^ self definedBehaviors select: [ :each | each isTaggedWith: aSymbol ]