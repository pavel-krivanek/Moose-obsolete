tests
testExpandedNameTest
	self
		assertNodeSet:
			(namespacedDocument xPath: 'Q{bookNS}addressbook/Q{personNS}person')
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self assert: (namespacedDocument xPath: 'Q{undeclared}addressbook') isEmpty.

	self
		should: [namespacedDocument xPath: 'Q{bookNS} addressbook']
		raise: XPathSyntaxException.
	self
		should: [namespacedDocument xPath: 'Q {bookNS}addressbook']
		raise: XPathSyntaxException.