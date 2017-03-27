tests
testAttributePredicatesNotEquals
	| persons addresses |

	persons := (document allElementsNamed: 'person') allButFirst.
	self
		assertNodeSet: (document xpath: 'addressbook/person[ @ employee-number != "A0000" ]')
		hasNodes: persons;
		assertNodeSet: (document xpath: 'addressbook/person[ @ employee-number != ''A0000'' ]')
		hasNodes: persons;
		assertNodeSet:
			(document xpath: 'addressbook/person[ @ employee-number != "A0000"  and position() > 1]')
		hasNodes: persons.
	self assert:
		(document xpath:
			'addressbook/person[ @ employee-number != ''A0000'' and position() = 1]') isEmpty.

	addresses := document allElementsNamed: 'address'.
	self
		assertNodeSet: (document xpath: '//address[ @ number != 1 ]')
		hasNodes: addresses.
	addresses := addresses copyReplaceFrom: 2 to: 2 with: #().
	self
		assertNodeSet: (document xpath: '//address[ @ number != 344 ]')
		hasNodes: addresses.