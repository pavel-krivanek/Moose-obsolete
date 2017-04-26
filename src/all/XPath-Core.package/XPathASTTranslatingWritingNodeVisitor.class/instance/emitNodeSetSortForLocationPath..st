private
emitNodeSetSortForLocationPath: aLocationPath
	(aLocationPath hasSteps
		and: [aLocationPath isPredicateLocationPath not])
		ifTrue: [self emitAll: ' sort']