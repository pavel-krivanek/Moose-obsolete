tests
testAttributePredicates
	| persons |

	persons := (document allElementsNamed: 'person') copyFrom: 2 to: 3.
	self
		assertNodeSet: (document xPath: 'addressbook/person[ @ middle-initial ]')
		hasNodes: persons;
		assertNodeSet: (document xPath: 'addressbook/person[ @ middle-initial and position() > 1 ]')
		hasNodes: persons;
		assertNodeSet: (document xPath: 'addressbook/person[ @ * [ local-name() = "middle-initial" ] ]')
		hasNodes: persons;
		assertNodeSet: (document xPath: 'addressbook/person[ @ * [ self::attribute(middle-initial) ] ]')
		hasNodes: persons;
		assertNodeSet:
			(document xPath:
				'addressbook/person[ @ * [ local-name() = "middle-initial" ] and position() < 4 ]')
		hasNodes: persons.

	self
		assert: (document xPath: 'addressbook/person[ @ middle-initial and position() < 2 ]') isEmpty;
		assert:
			(document xPath:
				'addressbook/person[ @ * [ local-name() = "middle-initial" ] and position() > 3 ]') isEmpty;
		assert: (document xPath: 'addressbook/person[ @ absent ]') isEmpty;
		assert: (document xPath: 'addressbook/person[ @ * [ self::attribute(absent) ] ]') isEmpty;
		assert: (document xPath: 'addressbook/person[ @ * [ local-name() = "absent" ] ]') isEmpty.