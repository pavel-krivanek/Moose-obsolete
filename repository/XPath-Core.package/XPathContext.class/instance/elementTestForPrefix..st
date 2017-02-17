private
elementTestForPrefix: aPrefix
	self hasNamespaces
		ifTrue: [
			^ XPathElementNodeTestForNamespaceURI namespaceURI:
				(self resolvePrefixReference: aPrefix)]
		ifFalse: [
			^ XPathElementNodeTestForPrefix prefix: aPrefix]