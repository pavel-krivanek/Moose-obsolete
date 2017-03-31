tests
testAttributePrefixAliasing
	| element |

	(element := self newElementWithAttributes)
		declarePrefix: 'alias' uri: 'prefixNS'.
	self
		should: [
			element attributeNodes addLast:
				(self attributeClass named: 'alias:four')]
		raise: XMLNamespaceException.

	(element := self newElementWithAttributes)
		declarePrefix: 'alias' uri: 'prefixNS'.
	self
		should: [(element attributeNodeAt: 'two') name: 'alias:two']
		raise: XMLNamespaceException.

	(element := self newElementWithAttributes)
		declarePrefix: 'alias' uri: 'prefixNS';
		usesNamespaces: false.
	self
		shouldnt: [
			element attributeNodes addLast:
				(self attributeClass named: 'alias:four').
			(element attributeNodeAt: 'two') name: 'alias:two']
		raise: XMLNamespaceException.