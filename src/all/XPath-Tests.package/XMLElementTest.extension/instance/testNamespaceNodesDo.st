*XPath-Tests
testNamespaceNodesDo
	| element |

	element := self newNode.
	self
		should: [:block | element namespaceNodesDo: block]
		enumerate: element namespaceNodes.

	element configuration usesNamespaces: false.
	self
		should: [:block | element namespaceNodesDo: block]
		enumerate: #().

	element configuration usesNamespaces: true.
	element declareNamespaces: self namespaces.
	self
		should: [:block | element namespaceNodesDo: block]
		enumerate: element namespaceNodes.

	element declarePrefix: 'xml' uri: XMLNamespaceScope xmlNamespaceURI.
	self
		should: [:block | element namespaceNodesDo: block]
		enumerate: element namespaceNodes.