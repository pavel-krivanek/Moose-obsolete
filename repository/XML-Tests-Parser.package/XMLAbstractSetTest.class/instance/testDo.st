tests
testDo
	| enumerated |

	enumerated := OrderedCollection new.
	self emptySet do: [:each | enumerated addLast: each].
	self assert: enumerated size = 0.

	self setWithElements do: [:each | enumerated addLast: each].
	self
		assert: enumerated size = self setElements size;
		assert: (self setElements allSatisfy: [:each | enumerated includes: each]).