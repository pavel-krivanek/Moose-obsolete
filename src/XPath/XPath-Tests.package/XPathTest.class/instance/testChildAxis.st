tests
testChildAxis
	| nodes |

	nodes := document allElementsNamed: 'person'.
	self
		assertNodeSet:
			(XPath
				for: 'child::addressbook/child::person'
				in: document)
		hasNodes: nodes.

	nodes removeAll.
	document allElementsNamed: 'person' do: [:each | nodes addAll: each nodes].
	self
		assertNodeSet:
			(XPath
				for: '/addressbook/person/node()'
				in: document)
		hasNodes: nodes.

	nodes := document root nodes copy.
	(document allElementsNamed: 'person') third nodesDo: [:each |
		each hasChildren
			ifTrue: [nodes addAll: each nodes]].
	self
		assertNodeSet:
			(XPath
				for: '(/addressbook | //person[3]/*)/node()'
				in: document)
		hasNodes: nodes.