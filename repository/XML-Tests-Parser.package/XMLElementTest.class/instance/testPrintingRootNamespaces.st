tests
testPrintingRootNamespaces
	| element |

	element :=
		self nodeClass
			name: 'used:element'
			namespaces: (Array with: '' -> 'defaultNS' with: 'used' -> 'usedNS').
	element addElementNamed: 'empty'.

	self assert:
		element printString =
			('<used:element xmlns="defaultNS" xmlns:used="usedNS">',
			'<empty />',
			'</used:element>').