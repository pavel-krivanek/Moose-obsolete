private
namespaceAxisAnySatisfy: aNamespaceNodeTest
	self do: [:each |
		(each namespaceAxisAnySatisfy: aNamespaceNodeTest)
			ifTrue: [^ true]].
	^ false.