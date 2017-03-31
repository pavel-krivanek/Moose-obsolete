tests
testAttributePrefixUndeclared
	| element |

	element := self newElementWithAttributes.
	self
		should: [
			element attributeNodes add:
				(self attributeClass named: 'undeclared:newName')]
		raise: XMLNamespaceException.

	element := self newElementWithAttributes.
	self
		should: [
			(element attributeNodeAt: 'one') name: 'undeclared:one']
		raise: XMLNamespaceException.

	element := self newElementWithAttributes.
	self
		shouldnt: [
			element usesNamespaces: false.
			element attributeNodes add:
				(self attributeClass named: 'undeclared:newName').
			(element attributeNodeAt: 'one') name: 'undeclared:one']
		raise: XMLNamespaceException.
