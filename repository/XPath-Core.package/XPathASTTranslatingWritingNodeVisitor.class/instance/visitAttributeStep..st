visiting - steps
visitAttributeStep: anAttributeStep
	(anAttributeStep isRelativeOrAbsoluteLocationPathStep
		and: [anAttributeStep hasPredicates not
			and: [anAttributeStep isSoleStep
				and: [anAttributeStep isPredicateLocationPathStep]]])
		ifTrue: [
			self
				emitAll: ' isElement and:[';
				emitAll: self locationPathRootVariable;
				emitAll: ' hasAttributes and:[';
				emitAll: self locationPathRootVariable.
			anAttributeStep nodeTest isAttributeNodeTestForName
				ifTrue: [
					"can use a direct lookup here"
					self
						emitAll: ' includesAttribute:';
						emitQuotedString: anAttributeStep nodeTest name]
				ifFalse: [
					self emitAll: ' attributeNodes anySatisfy:'.
					anAttributeStep nodeTest acceptNodeVisitor: self].
			self emitAll: ']])'.
			^ anAttributeStep]
		ifFalse: [
			self emitAll: ' attributeAxis:'.
			^ super visitAttributeStep: anAttributeStep]