instance creation
newNodeWithElements
	^ self newNode
		addNode: (XMLComment string: 'before');
		addNode:
			((self elementClass named: 'zero')
				addNode: (XMLComment string: 'during');
				addNode:
					((self elementClass named: 'one')
						attributeAt: 'one' put: '1';
						addNode: (XMLString string: 'testing one');
						addNode: (self elementClass named: 'two');
						addNode: (XMLPI target: 'target' data: 'data');
						yourself);
				addNode: (XMLString string: 'testing two');
				addNode:
					((self elementClass name: 'three' namespaceURI: 'testNS')
						addNode: (self elementClass named: 'four');
						addNode: (XMLCData string: 'testing three');
						yourself);
				addNode:
					((self elementClass name: 'prefix:four' namespaceURI: 'testNS')
						attributeAt: 'four' put: '4';
						addNode:
							(self elementClass name: 'prefix:five' namespaceURI: 'testNS');
						yourself);
				addNode: (self elementClass named: 'four');
				yourself);
		addNode: (XMLComment string: 'after');
		yourself.