visiting - steps
visitDescendantOrSelfStep: aDescendantOrSelfStep
	"traverse in post-order"
	super visitDescendantOrSelfStep: aDescendantOrSelfStep.

	"only optimize 'descendant-or-self::node()' steps"
	(aDescendantOrSelfStep nodeTest isAnyNodeTest
		and: [aDescendantOrSelfStep hasPredicates not])
		ifTrue: [
			"if the next step after this 'descendant-or-self::node()' step is
			'self::node()' or an identical 'descendant-or-self::node()' step,
			the next step is redundant"
			[(self peekStep isDescendantOrSelfStep
				or: [self peekStep isSelfStep])
				and: [self peekStep nodeTest isAnyNodeTest
					and: [self peekStep hasPredicates not]]]
				whileTrue: [self nextStep].

			"'descendant-or-self::node()/self::...' and
			'descendant-or-self::node()/descendant-or-self::...'
			are equivalent to 'descendant-or-self::...', regardless of the
			node test, as long as the second step also has no predicates"
			((self peekStep isDescendantOrSelfStep
				or: [self peekStep isSelfStep])
				and: [self peekStep hasPredicates not])
				ifTrue: [
					^ XPathASTDescendantOrSelfStepNode nodeTest:
						self nextStep nodeTest].

			"'descendant-or-self::node()/child::...' and
			'descendant-or-self::node()/descendant::...' are
			equivalent to 'descendant::...', regardless of the node test,
			as long as the second step also has no predicates"
			((self peekStep isChildStep
				or: [self peekStep isDescendantStep])
				and: [self peekStep hasPredicates not])
				ifTrue: [
					^ XPathASTDescendantStepNode nodeTest:
						self nextStep nodeTest]].

	^ aDescendantOrSelfStep.