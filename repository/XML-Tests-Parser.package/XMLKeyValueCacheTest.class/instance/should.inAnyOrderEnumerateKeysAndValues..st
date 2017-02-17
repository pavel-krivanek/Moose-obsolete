asserting
should: aBlock inAnyOrderEnumerateKeysAndValues: anAssociationCollection
	| enumerated |

	enumerated := OrderedCollection new.
	aBlock value: [:first :second |
		enumerated addLast: first -> second].
	self
		assert: enumerated size = anAssociationCollection size;
		assert: enumerated asSet = anAssociationCollection asSet.