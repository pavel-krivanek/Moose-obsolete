tests
testUnion
	| expected result |

	expected := document allElementsNamed: 'person'.
	result := 
		XPath
			for:
				'addressbook/person[position() = 1 or position() = 4] |
				(addressbook/person[4]/ preceding-sibling::* [position() < 4])'
			in: document.
	self
		assertNodeSet: result
		hasNodes: expected.

	expected removeAll.
	document allElementsNamed: 'person' do: [:each |
		expected
			addLast: each;
			addAll: each namespaceNodes;
			addAll: each attributeNodes;
			addAll: each elements].
	result :=
		XPath
			for:
				'addressbook/person/@* | ',
				'*/person/namespace::* | ',
				'addressbook/person | ',
				'*/person/*'
			in: document.
	self
		assertNodeSet: result
		hasNodes: expected.

	expected removeAll.
	(document allElementsNamed: 'person') first
		namespaceNodesDo: [:each | expected addLast: each];
		attributeNodesDo: [:each | expected addLast: each];
		nodesDo: [:each | expected addLast: each].
	result :=
		XPath
			for:
				'addressbook/person[1]/node() | ',
				'*/person[1]/@* | ',
				'addressbook/person[1]/namespace::*'
			in: document.
	self
		assertNodeSet: result
		hasNodes: expected.