tests
testNotationText
	self
		assert:
			(controller
				notationTextFor:
					(OPUMLProperty new
						name: 'attr';
						isDerived: true))
		equals: '/attr'