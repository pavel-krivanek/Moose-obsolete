tests
testNamespaceTypeTest
	| results |

	results := XMLNodeList new.
	namespacedDocument allNodesDo: [:each |
		each isElement
			ifTrue: [results addAll: each namespaceNodes]
			ifFalse: [
				each isStringNode
					ifTrue: [results addLast: each]]].
	self
		assertNodeSet:
			(namespacedDocument xpath: '//namespace::node() | //text()')
		hasNodes: results.
	self
		assertNodeSet:
			(namespacedDocument xpath:
				'(//namespace::node() | //text())/ self :: namespace()')
		hasNodes: (results select: [:each | each isNamespace]).