tests
testElementExpandedNameWildcardTest
	self
		assertNodeSet: (namespacedDocument xPath: 'element( Q{bookNS}* ) / element( Q{personNS}* )')
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self assert: (namespacedDocument xPath: 'element(Q{undeclared}*)') isEmpty.

	self
		should: [namespacedDocument xPath: 'element(Q{bookNS} *)']
		raise: XPathSyntaxException.
	self
		should: [namespacedDocument xPath: 'element(Q {bookNS}*)']
		raise: XPathSyntaxException.