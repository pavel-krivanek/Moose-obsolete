private
namespaceTestForPrefix: aPrefix
	self hasNamespaces
		ifTrue: [
			^ XPathNamespaceTestForNamespaceURI namespaceURI:
				(self resolvePrefixReference: aPrefix)]
		ifFalse: [
			^ XPathNamespaceTestForPrefix prefix: aPrefix]