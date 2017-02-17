tests
testInnerXML
	| node element |

	node := self newNode.
	element :=
		node addNode:
			(self elementClass
				name: 'test'
				namespaces: (Array with: 'prefix'-> 'ns')).
	element innerXML: '<prefix:inner></prefix:inner>'.
	element firstNode innerXML: 'test<!--comment-->'.
	self
		assert: element nodes size = 1;
		assert: (element firstNode isNamed: 'prefix:inner');
		assert: (element firstNode contentString = 'test');
		assert:
			node innerXML =
				'<test xmlns:prefix="ns"><prefix:inner>test</prefix:inner></test>';
		assert:
			element innerXML =
				'<prefix:inner xmlns:prefix="ns">test</prefix:inner>';
		assert: element firstNode innerXML = 'test'.