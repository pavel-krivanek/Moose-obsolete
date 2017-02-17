visiting - steps
visitParentStep: aParentStep
	(aParentStep isRelativeOrAbsoluteLocationPathStep
		and: [aParentStep hasPredicates not
			and: [aParentStep isSoleStep
				and: [aParentStep isPredicateLocationPathStep]]])
		ifTrue: [
			self emitAll: ' hasParent and:['.
			aParentStep nodeTest acceptNodeVisitor: self.
			self
				emitAll: ' value:';
				emitAll: self locationPathRootVariable.
			self emitAll: ' parent])'.
			^ aParentStep]
		ifFalse: [
			self emitAll: ' parentAxis:'.
			^ super visitParentStep: aParentStep]