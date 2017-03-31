tests
testExpandedNameTest
	self
		assertNodeSet:
			(namespacedDocument xpath: 'Q{bookNS}addressbook/Q{personNS}person')
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self assert: (namespacedDocument xpath: 'Q{undeclared}addressbook') isEmpty.

	self
		should: [namespacedDocument xpath: 'Q{bookNS} addressbook']
		raise: XPathSyntaxException.
	self
		should: [namespacedDocument xpath: 'Q {bookNS}addressbook']
		raise: XPathSyntaxException.