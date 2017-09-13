tests
testNotationText
	self
		assert: (controller notationTextFor: (OPUMLOperation new name: 'attr'))
		equals: 'attr()'