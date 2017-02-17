tests
testDescendantAxis
	| path results |

	path := XPath for: '//address/@city'.
	results := path in: document.
	self
		assert: results size = 4;
		assert: results first value = 'Los Angeles'.

	path := XPath for: 'addressbook/person//address'.
	self
		assertNodeSet: (path in: document)
		hasNodes: (document allElementsNamed: 'address').

	path := XPath for: 'addressbook/person//address//absent'.
	self assert: (path in: document) isEmpty.

	path := XPath for: 'addressbook/person//*'.
	self
		assertNodeSet: (path in: document)
		hasNodes:
			(document root descendantElementsSelect: [:each | (each isNamed: 'person') not]).

	path := XPath for: 'addressbook/person//*/descendant::*'.
	self
		assertNodeSet: (path in: document)
		hasNodes:
			(document root descendantElementsSelect: [:each |
				((each isNamed: 'person')
					or: [each parent isNamed: 'person']) not]).

	path := XPath for: 'addressbook/person[last()]/preceding-sibling::person/descendant::*'.
	self
		assertNodeSet: (path in: document)
		hasNodes:
			(document root descendantElementsSelect: [:each |
				((each isNamed: 'person')
					or: [each ancestorElements includes: document root lastElement]) not]).

	path := XPath for: 'addressbook/descendant::comment()'.
	self
		assertNodeSet: (path in: document)
		hasNodes: (document allNodesSelect: [:each | each isComment]).

	path := XPath for: 'addressbook/descendant::comment()/descendant::node()'.
	self assert: (path in: document) isEmpty.