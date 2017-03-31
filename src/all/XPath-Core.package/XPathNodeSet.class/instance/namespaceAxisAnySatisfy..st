private
namespaceAxisAnySatisfy: aNamespaceNodeTest
	^ self anySatisfy: [:each |
		each namespaceAxisAnySatisfy: aNamespaceNodeTest]