tests
testElementExpandedNameWildcardTest
	self
		assertNodeSet: (namespacedDocument xpath: 'element( Q{bookNS}* ) / element( Q{personNS}* )')
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self assert: (namespacedDocument xpath: 'element(Q{undeclared}*)') isEmpty.

	self
		should: [namespacedDocument xpath: 'element(Q{bookNS} *)']
		raise: XPathSyntaxException.
	self
		should: [namespacedDocument xpath: 'element(Q {bookNS}*)']
		raise: XPathSyntaxException.