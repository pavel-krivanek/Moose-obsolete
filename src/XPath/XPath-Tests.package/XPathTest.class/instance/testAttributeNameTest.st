tests
testAttributeNameTest
	| results |

	results :=
		document xpath:
			'addressbook/person/attribute::node()/self::attribute(employee-number)'.
	self
		assertNodeSet: results
		hasNodes:
			((document allElementsNamed: 'person') collect: [:each |
				each attributeNodeAt: 'employee-number']).

	results :=
		document xpath:
			'addressbook/person/attribute::node()/self::attribute(absent)'.
	self assert: results isEmpty.