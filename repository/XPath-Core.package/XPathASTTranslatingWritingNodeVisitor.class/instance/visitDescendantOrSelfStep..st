visiting - steps
visitDescendantOrSelfStep: aDescendantOrSelfStep
	(aDescendantOrSelfStep isRelativeOrAbsoluteLocationPathStep
		and: [aDescendantOrSelfStep hasPredicates not
			and: [aDescendantOrSelfStep isSoleStep
				and: [aDescendantOrSelfStep isPredicateLocationPathStep]]])
		ifTrue: [
			self emitAll: ' allNodesDetect:'.
			aDescendantOrSelfStep nodeTest acceptNodeVisitor: self.
			self emitAll: ') notNil'.
			^ aDescendantOrSelfStep]
		ifFalse: [
			self emitAll: ' descendantOrSelfAxis:'.
			^ super visitDescendantOrSelfStep: aDescendantOrSelfStep].