tests
testAttributePredicatesEquals
	| persons addresses |

	persons := (document allElementsNamed: 'person') copyFrom: 1 to: 1.
	self
		assertNodeSet: (document xPath: 'addressbook/person[ @ employee-number = "A0000" ]')
		hasNodes: persons;
		assertNodeSet: (document xPath: 'addressbook/person[ @ employee-number = ''A0000'' ]')
		hasNodes: persons;
		assertNodeSet:
			(document xPath: 'addressbook/person[ @ employee-number = "A0000" and position() = 1]')
		hasNodes: persons.
	self assert:
		(document xPath: 'addressbook/person[ @ employee-number = ''A0000'' and position() > 1]') isEmpty.

	addresses := (document allElementsNamed: 'address') copyFrom: 2 to: 2.
	self
		assertNodeSet: (document xPath: '//address[ @ number = 344 ]')
		hasNodes: addresses.
	self assert:
		(document xPath: '//address[ @ number = 1 ]') isEmpty.