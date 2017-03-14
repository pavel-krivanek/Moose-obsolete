tests
testNamespaceAxis
	| nodes |

	nodes := self newNodeSet.
	namespacedDocument allElementsDo: [:each |
		nodes
			add: (XPathNamespaceNode withXMLNamespaceOnElement: each);
			add: (XPathNamespaceNode element: each name: '' uri: 'defaultNS');
			add: (XPathNamespaceNode element: each name: 'book' uri: 'bookNS');
			add: (XPathNamespaceNode element: each name: 'ps' uri: 'personNS')].
	self assert: nodes size = (namespacedDocument allElements size * 4).
	self
		assertNodeSet: (namespacedDocument xPath: '//namespace::*')
		hasNodes: nodes.
	self
		assertNodeSet: (namespacedDocument xPath: '//namespace::book')
		hasNodes: (nodes select: [:each | each name ='book']).

	"namespace nodes can't be prefixed or namespaced themselves:"
	self
		assert: (namespacedDocument xPath: '//namespace::book:*') isEmpty;
		assert: (namespacedDocument xPath: '//namespace::book/namespace::book') isEmpty.

	self
		assertNodeSet: (document xPath: '//namespace::*')
		hasNodes:
			(document allElementsCollect: [:each |
				XPathNamespaceNode withXMLNamespaceOnElement: each]).