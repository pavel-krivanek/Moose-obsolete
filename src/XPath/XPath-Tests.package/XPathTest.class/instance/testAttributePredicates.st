tests
testAttributePredicates
	| persons |

	persons := (document allElementsNamed: 'person') copyFrom: 2 to: 3.
	self
		assertNodeSet: (document xpath: 'addressbook/person[ @ middle-initial ]')
		hasNodes: persons;
		assertNodeSet: (document xpath: 'addressbook/person[ @ middle-initial and position() > 1 ]')
		hasNodes: persons;
		assertNodeSet: (document xpath: 'addressbook/person[ @ * [ local-name() = "middle-initial" ] ]')
		hasNodes: persons;
		assertNodeSet: (document xpath: 'addressbook/person[ @ * [ self::attribute(middle-initial) ] ]')
		hasNodes: persons;
		assertNodeSet:
			(document xpath:
				'addressbook/person[ @ * [ local-name() = "middle-initial" ] and position() < 4 ]')
		hasNodes: persons.

	self
		assert: (document xpath: 'addressbook/person[ @ middle-initial and position() < 2 ]') isEmpty;
		assert:
			(document xpath:
				'addressbook/person[ @ * [ local-name() = "middle-initial" ] and position() > 3 ]') isEmpty;
		assert: (document xpath: 'addressbook/person[ @ absent ]') isEmpty;
		assert: (document xpath: 'addressbook/person[ @ * [ self::attribute(absent) ] ]') isEmpty;
		assert: (document xpath: 'addressbook/person[ @ * [ local-name() = "absent" ] ]') isEmpty.