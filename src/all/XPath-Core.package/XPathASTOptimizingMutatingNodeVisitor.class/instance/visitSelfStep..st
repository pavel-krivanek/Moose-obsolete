visiting - steps
visitSelfStep: aSelfStep
	"traverse in post-order"
	super visitSelfStep: aSelfStep.

	"steps like 'self::node()' or '.' can be eliminated if they're not
	the first step and the previous step is a forward axis step"
	(aSelfStep nodeTest isAnyNodeTest
		and: [aSelfStep hasPredicates not
			and: [self previousStep isNull not
				and: [self previousStep isForwardAxisStep]]])
		ifTrue: [^ XPathASTNullNode new]
		ifFalse: [^ aSelfStep].