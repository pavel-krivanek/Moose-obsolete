visiting - steps
visitSelfStep: aSelfStep
	(aSelfStep isRelativeOrAbsoluteLocationPathStep
		and: [aSelfStep hasPredicates not
			and: [aSelfStep isSoleStep
				and: [aSelfStep isPredicateLocationPathStep]]])
		ifTrue: [
			self emitAll: ' matches:'.
			aSelfStep nodeTest acceptNodeVisitor: self.
			self emit: $).
			^ aSelfStep]
		ifFalse: [
			self emitAll: ' selfAxis:'.
			^ super visitSelfStep: aSelfStep]