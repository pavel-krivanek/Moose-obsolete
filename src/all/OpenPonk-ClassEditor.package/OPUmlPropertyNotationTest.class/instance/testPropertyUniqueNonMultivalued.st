tests
testPropertyUniqueNonMultivalued
	"isUnique has no semantic effect on non-multivalued element (specs)"

	(property := OPUMLProperty new)
		name: 'op';
		isUnique: true.
	self assert: property notationString equals: 'op'