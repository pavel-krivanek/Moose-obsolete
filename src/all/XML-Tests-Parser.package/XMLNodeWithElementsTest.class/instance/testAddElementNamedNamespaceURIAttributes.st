tests
testAddElementNamedNamespaceURIAttributes
	| nodeWithElements element |

	nodeWithElements := self newNode.
	element :=
		nodeWithElements
			addElementNamed: 'prefix:one'
			namespaceURI: 'prefixNS'
			attributes: self attributeAssociations.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element isElement;
		assert: element name = 'prefix:one';
		assert: element namespaceURI = 'prefixNS';
		assertElement: element hasAttributes: self attributes.
	self
		should: [
			"attributes with undeclared prefixes should be caught"
			nodeWithElements
				addElementNamed: 'two'
				namespaceURI: 'defaultNS'
				attributes: self attributeAssociations]
		raise: XMLNamespaceException.

	nodeWithElements := self newNode.
	nodeWithElements usesNamespaces: false.
	self
		shouldnt: [
			nodeWithElements
				addElementNamed: 'three'
				namespaceURI: 'defaultNS'
				attributes: self attributeAssociations]
		raise: XMLNamespaceException.