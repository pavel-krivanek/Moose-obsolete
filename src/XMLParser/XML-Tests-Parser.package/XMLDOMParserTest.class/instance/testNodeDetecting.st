tests
testNodeDetecting
	| document people |

	document := XMLDOMParser parse: self addressBookXML.
	people := document root elementsAt: 'person'.
	self assert:
		((document findElementNamed: 'addressbook') nodesDetect: [:each |
			each isElement and: [(each attributeAt: 'family-name') = 'Brown']]) == people second.
	self assert:
		((document findElementNamed: 'addressbook')
			nodesDetect: [:each | each isElement and: [(each attributeAt: 'unknown') = 'Brown']]
			ifNone: ['not found']) = 'not found'.