*XPath-Tests
testNamespaceNodes
	| element nodes |

	element := self newNode.
	nodes :=
		XMLNodeList with:
			(XPathNamespaceNode withXMLNamespaceOnElement: element).
	self assert: element namespaceNodes = nodes.

	element configuration usesNamespaces: false.
	self assert: element namespaceNodes isEmpty.

	element configuration usesNamespaces: true.
	element declareNamespaces: self namespaces.
	self namespaces keysAndValuesDo: [:prefix :uri |
		nodes addLast:
			(XPathNamespaceNode
				element: element
				name: prefix
				uri: uri)].
	self assert: element namespaceNodes = nodes.

	element declarePrefix: 'xml' uri: XMLNamespaceScope xmlNamespaceURI.
	nodes addLast: nodes removeFirst.
	self assert: element namespaceNodes = nodes.