tests
testPrintingDefaultNamespaces
	| element |

	element :=
		self nodeClass
			name: 'element'
			namespaceURI: 'default'.
	element addNode:
		((self nodeClass
			name: 'element'
			namespaceURI: '')
			addElementNamed: 'empty';
			yourself).

	self assert:
		element printString =
			('<element xmlns="default">',
			'<element xmlns=""><empty /></element>',
			'</element>').