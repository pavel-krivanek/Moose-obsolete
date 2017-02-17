tests
testAttributeNodeAtNamespaceURIIfAbsent
	| element |

	element := self newElementWithAttributes.
	self assert:
		(element
			attributeNodeAt: 'prefix:two'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) =
				element attributeNodes third.
	self assert:
		(element
			attributeNodeAt: 'two'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) =
				element attributeNodes third.
	self assert:
		(element
			attributeNodeAt: 'prefix:two'
			namespaceURI: 'absent'
			ifAbsent: [#absent]) = #absent.