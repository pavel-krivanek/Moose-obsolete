visiting - steps
visitDescendantOrSelfStep: aDescendantOrSelfStep
	"traverse in post-order"
	super visitDescendantOrSelfStep: aDescendantOrSelfStep.

	(aDescendantOrSelfStep nodeTest isAnyNodeTest
		and: [aDescendantOrSelfStep hasPredicates not])
		ifFalse: [^ aDescendantOrSelfStep].

	"'descendant-or-self::node()/child::...' and
	'descendant-or-self::node()/descendant::...' are
	equivalent to ''descendant::...' if the second
	step has no predicares"
	((self peekStep isChildStep
		or: [self peekStep isDescendantStep])
		and: [self peekStep hasPredicates not])
		ifTrue: [| replacementNode |
			replacementNode :=
				(XPathASTDescendantStepNode
					nodeTest: self peekStep nodeTest
					predicates: self peekStep predicates).
			self nextStep.
			^ replacementNode].

	"'descendant-or-self::node()/self::...' and
	'descendant-or-self::node()/descendant-or-self::...'
	are equivalent to ''descendant-or-self::...' if
	the second step has no predicares"
	[(self peekStep isDescendantOrSelfStep
		or: [self peekStep isSelfStep])
		and: [self peekStep nodeTest isAnyNodeTest
			and: [self peekStep hasPredicates not]]]
		whileTrue: [self nextStep].
	((self peekStep isDescendantOrSelfStep
		or: [self peekStep isSelfStep])
		and: [self peekStep hasPredicates not])
		ifTrue: [| replacementNode |
			replacementNode :=
				(XPathASTDescendantOrSelfStepNode
					nodeTest: self peekStep nodeTest
					predicates: self peekStep predicates).
			self nextStep.
			^ replacementNode].

	^ aDescendantOrSelfStep.