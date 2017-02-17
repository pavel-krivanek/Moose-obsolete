asserting
should: aBlock inAnyOrderEnumerate: aCollection
	| enumerated |

	enumerated := OrderedCollection new.
	aBlock value: [:each | enumerated addLast: each].
	self
		assert: enumerated size = aCollection size;
		assert: enumerated asSet = aCollection asSet.