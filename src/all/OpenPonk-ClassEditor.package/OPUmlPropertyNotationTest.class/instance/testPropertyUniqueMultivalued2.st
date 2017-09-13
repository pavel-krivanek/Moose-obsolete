tests
testPropertyUniqueMultivalued2
	"isUnique has no semantic effect on non-multivalued element (specs)"

	(property := OPUMLProperty new)
		name: 'op';
		isUnique: false.
	self assert: property notationString equals: 'op'