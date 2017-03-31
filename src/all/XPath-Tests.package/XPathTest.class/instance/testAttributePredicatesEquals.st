tests
testAttributePredicatesEquals
	| person |

	person := (document allElementsNamed: 'person') first.
	self
		assertNodeSet: (document xpath: 'addressbook/person[ @ employee-number = "A0000" ]')
		hasNode: person;
		assertNodeSet: (document xpath: 'addressbook/person[ @ employee-number = ''A0000'' ]')
		hasNode: person;
		assertNodeSet:
			(document xpath: 'addressbook/person[ @ employee-number = "A0000" and position() = 1]')
		hasNode: person.
	self assert:
		(document xpath:
			'addressbook/person[ @ employee-number = ''A0000'' and position() > 1]') isEmpty.

	self
		assertNodeSet: (document xpath: '//address[ @ number = 344 ]')
		hasNode: (document allElementsNamed: 'address') second.
	self assert:
		(document xpath: '//address[ @ number = 1 ]') isEmpty.