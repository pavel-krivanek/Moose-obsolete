*XPath-Tests
testHasNamespaceNodes
	| element |

	element := self newNode.
	self assert: element hasNamespaceNodes.

	element declareNamespaces: self namespaces.
	self assert: element hasNamespaceNodes.

	element configuration usesNamespaces: false.
	self deny: element hasNamespaceNodes.