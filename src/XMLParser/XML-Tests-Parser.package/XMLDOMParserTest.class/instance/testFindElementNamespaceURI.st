tests
testFindElementNamespaceURI
	| document people |

	document := XMLDOMParser parse: self addressBookNamespacedXML.

	people := document allElementsNamed: 'person' namespaceURI: 'defaultNS'.
	self assert:
		(document
			findElementNamed: 'person'
			namespaceURI: 'defaultNS'
			with: [:each | (each attributeAt: 'employee-number') = 'A7987']) == people last.
	self assert:
		(document
			findElementNamed: 'person'
			namespaceURI: 'defaultNS'
			with: [:each | (each attributeAt: 'family-name') = 'Brown']) == people second.