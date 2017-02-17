tests
testPrintingNonRootNamespaces
	| element |

	element :=
		self nodeClass
			name: 'element'.
	element addNode:
		(self nodeClass
			name: 'used:empty'
			namespaces: (Array with: '' -> 'defaultNS' with: 'used' -> 'usedNS')).

	self assert:
		element printString =
			('<element>',
			'<used:empty xmlns="defaultNS" xmlns:used="usedNS" />',
			'</element>').