tests
testAttributeNameTest
	| results |

	results :=
		document xPath:
			'addressbook/person/attribute::node()/self::attribute(employee-number)'.
	self
		assert: results size = 4;
		assert:
			results =
				((document allElementsNamed: 'person') collect: [:each |
					each attributeNodeAt: 'employee-number']).

	results :=
		document xPath:
			'addressbook/person/attribute::node()/self::attribute(absent)'.
	self assert: results isEmpty.