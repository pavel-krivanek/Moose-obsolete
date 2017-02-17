tests
testAsMSEString
	self assert: MooseModel new asMSEString equals: '()'.
	self
		assert:
			(MooseModel new
				add: MooseEntity new;
				asMSEString)
		equals:
			'(
	(Moose.Entity (id: 1)))'