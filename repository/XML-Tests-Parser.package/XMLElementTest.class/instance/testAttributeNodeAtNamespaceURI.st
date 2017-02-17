tests
testAttributeNodeAtNamespaceURI
	| element |

	element := self newElementWithAttributes.
	self assert:
		(element attributeNodeAt: 'prefix:two' namespaceURI: 'prefixNS') =
			(element attributeNodes third).
	self assert:
		(element attributeNodeAt: 'two' namespaceURI: 'prefixNS') =
			(element attributeNodes third).
	self assert:
		(element attributeNodeAt: 'prefix:two' namespaceURI: 'absent') isNil.