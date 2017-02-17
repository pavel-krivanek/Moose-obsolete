visiting - steps
visitChildStep: aChildStep
	(aChildStep isRelativeOrAbsoluteLocationPathStep
		and: [aChildStep hasPredicates not
			and: [aChildStep isSoleStep
				and: [aChildStep isPredicateLocationPathStep]]])
		ifTrue: [
			self
				emitAll: ' hasChildren and:[';
				emitAll: self locationPathRootVariable;
				emitAll: ' nodes anySatisfy:'.
			aChildStep nodeTest acceptNodeVisitor: self.
			self emitAll: '])'.
			^ aChildStep]
		ifFalse: [
			self emitAll: ' childAxis:'.
			^ super visitChildStep: aChildStep]