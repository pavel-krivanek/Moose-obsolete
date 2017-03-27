visiting - location paths
visitAbsoluteLocationPath: anAbsoluteLocationPath
	self
		emit: $(;
		emitStartGroupingsForLocationPath: anAbsoluteLocationPath;
		emitInitializingDocumentRootVariableReference.
	super visitAbsoluteLocationPath: anAbsoluteLocationPath.
	self emit: $).
	(anAbsoluteLocationPath hasSteps
		and: [anAbsoluteLocationPath isPredicateLocationPath not])
		ifTrue: [self emitNodeSetSort].
	^ anAbsoluteLocationPath.