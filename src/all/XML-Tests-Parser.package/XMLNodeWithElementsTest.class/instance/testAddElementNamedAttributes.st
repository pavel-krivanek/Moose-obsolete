tests
testAddElementNamedAttributes
	| nodeWithElements element |

	nodeWithElements := self newNode.
	element :=
		nodeWithElements
			addElementNamed: 'one'
			attributes: self unprefixedAttributeAssociations.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element isElement;
		assert: element name = 'one';
		assertElement: element hasAttributes: self unprefixedAttributes.
	self
		should: [
			nodeWithElements
				addElementNamed: 'undeclared:two'
				attributes: self unprefixedAttributeAssociations]
		raise: XMLNamespaceException.
	self
		should: [
			"attributes with undeclared prefixes should be caught too"
			nodeWithElements
				addElementNamed: 'three'
				attributes: self attributeAssociations]
		raise: XMLNamespaceException.

	nodeWithElements := self newNode.
	nodeWithElements usesNamespaces: false.
	self
		shouldnt: [
			nodeWithElements
				addElementNamed: 'undeclared:four'
				attributes: self attributeAssociations]
		raise: XMLNamespaceException.