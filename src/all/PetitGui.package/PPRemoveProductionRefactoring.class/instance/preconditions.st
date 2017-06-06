preconditions
preconditions
	^ (self checkCompositeParser: class)
		& (RBCondition definesSelector: production asSymbol in: class)
		& (RBCondition definesInstanceVariable: production asString in: class)