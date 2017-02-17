visiting - steps
visitDescendantStep: aDescendantStep
	(aDescendantStep isRelativeOrAbsoluteLocationPathStep
		and: [aDescendantStep hasPredicates not
			and: [aDescendantStep isSoleStep
				and: [aDescendantStep isPredicateLocationPathStep]]])
		ifTrue: [
			self emitAll: ' descendantNodesDetect:'.
			aDescendantStep nodeTest acceptNodeVisitor: self.
			self emitAll: ') notNil'.
			^ aDescendantStep]
		ifFalse: [
			self emitAll: ' descendantAxis:'.
			^ super visitDescendantStep: aDescendantStep]