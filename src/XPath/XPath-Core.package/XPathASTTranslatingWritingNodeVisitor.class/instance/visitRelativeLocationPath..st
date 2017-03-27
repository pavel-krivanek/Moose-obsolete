visiting - location paths
visitRelativeLocationPath: aRelativeLocationPath
	self
		emit: $(;
		emitStartGroupingsForLocationPath: aRelativeLocationPath;
		emitAll: self contextNodeVariable.
	super visitRelativeLocationPath: aRelativeLocationPath.
	self
		emit: $).
	(aRelativeLocationPath hasSteps
		and: [aRelativeLocationPath isPredicateLocationPath not])
		ifTrue: [self emitNodeSetSort].
	^ aRelativeLocationPath.