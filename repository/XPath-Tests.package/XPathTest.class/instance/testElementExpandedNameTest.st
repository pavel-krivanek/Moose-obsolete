tests
testElementExpandedNameTest
	self
		assertNodeSet:
			(namespacedDocument xPath: 'element( Q{bookNS}addressbook ) / element( Q{personNS}person )')
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self assert: (namespacedDocument xPath: 'element(Q{undeclared}addressbook)') isEmpty.

	self
		should: [namespacedDocument xPath: 'element(Q{bookNS} addressbook)']
		raise: XPathSyntaxException.
	self
		should: [namespacedDocument xPath: 'element(Q {bookNS}addressbook)']
		raise: XPathSyntaxException.