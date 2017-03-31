tests
testElementExpandedNameTest
	self
		assertNodeSet:
			(namespacedDocument xpath: 'element( Q{bookNS}addressbook ) / element( Q{personNS}person )')
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self assert: (namespacedDocument xpath: 'element(Q{undeclared}addressbook)') isEmpty.

	self
		should: [namespacedDocument xpath: 'element(Q{bookNS} addressbook)']
		raise: XPathSyntaxException.
	self
		should: [namespacedDocument xpath: 'element(Q {bookNS}addressbook)']
		raise: XPathSyntaxException.