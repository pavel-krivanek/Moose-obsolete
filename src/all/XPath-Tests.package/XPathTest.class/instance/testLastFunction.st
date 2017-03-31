tests
testLastFunction
	| path elements |

	path := XPath for: 'last()'.
	self assert: (path in: document) = 1.

	path := XPath for: 'last()'.
	elements := document allElementsNamed: 'person'.
	elements do: [:each | self assert: (path in: each) = 1].

	path := XPath for: 'addressbook/person[last()]'.
	self
		assertNodeSet: (path in: document)
		hasNodes: (XMLNodeList with: elements last).

	path := XPath for: 'addressbook/descendant::node()[last()]'.
	self
		assertNodeSet: (path in: document)
		hasNodes: (XMLNodeList with: document allNodes last).

	path := XPath for: 'addressbook//node()[last()]'.
	self
		assertNodeSet: (path in: document)
		hasNodes: (document root descendantNodesSelect: [:each | each nextNode isNil]).

	self
		should: ['last(0)' asXPath evaluate]
		raise: XPathException.