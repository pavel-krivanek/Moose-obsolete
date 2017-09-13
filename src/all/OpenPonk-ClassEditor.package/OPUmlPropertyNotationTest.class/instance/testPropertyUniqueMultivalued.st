tests
testPropertyUniqueMultivalued
	"isUnique has no semantic effect on non-multivalued element (specs)"

	(property := OPUMLProperty new)
		name: 'op';
		isUnique: false;
		upperValue: (OPUMLLiteralUnlimitedNatural new value: '*').
	self assert: property notationString equals: 'op[1..*] {nonunique}'