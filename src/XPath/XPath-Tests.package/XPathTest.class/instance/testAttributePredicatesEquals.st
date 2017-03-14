tests
testAttributePredicatesEquals
	| person |

	person := (document allElementsNamed: 'person') first.
	self
		assertNodeSet: (document xPath: 'addressbook/person[ @ employee-number = "A0000" ]')
		hasNode: person;
		assertNodeSet: (document xPath: 'addressbook/person[ @ employee-number = ''A0000'' ]')
		hasNode: person;
		assertNodeSet:
			(document xPath: 'addressbook/person[ @ employee-number = "A0000" and position() = 1]')
		hasNode: person.
	self assert:
		(document xPath:
			'addressbook/person[ @ employee-number = ''A0000'' and position() > 1]') isEmpty.

	self
		assertNodeSet: (document xPath: '//address[ @ number = 344 ]')
		hasNode: (document allElementsNamed: 'address') second.
	self assert:
		(document xPath: '//address[ @ number = 1 ]') isEmpty.