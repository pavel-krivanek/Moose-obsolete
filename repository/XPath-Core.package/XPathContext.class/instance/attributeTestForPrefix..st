private
attributeTestForPrefix: aPrefix
	self hasNamespaces
		ifTrue: [
			^ XPathAttributeNodeTestForNamespaceURI namespaceURI:
				(self resolvePrefixReference: aPrefix)]
		ifFalse: [
			^ XPathAttributeNodeTestForPrefix prefix: aPrefix]