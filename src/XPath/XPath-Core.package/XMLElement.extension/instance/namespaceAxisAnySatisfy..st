*XPath-Core-private
namespaceAxisAnySatisfy: aNamespaceNodeTest
	^ self hasNamespaces
		and: [self namespaceNodes anySatisfy: aNamespaceNodeTest]