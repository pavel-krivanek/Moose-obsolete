tests
testChildAxis
	| children result |

	children := document allElementsNamed: 'person'.
	result :=
		XPath
			for: 'child::addressbook/child::person'
			in: document.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	children removeAll.
	document
		allElementsNamed: 'person'
		do: [:each |
			children addAll: each nodes].
	result :=
		XPath
			for: '/addressbook/person/node()'
			in: document.
	self
		assertNodeSet: result
		hasNodes: children.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	children := document root nodes copy.
	(document allElementsNamed: 'person') third nodesDo: [:each |
		each hasChildren
			ifTrue: [children addAll: each nodes]].
	result :=
		XPath
			for: '(/addressbook | //person[3]/*)/node()'
			in: document.
	self
		assertNodeSet: result
		hasNodes: children.