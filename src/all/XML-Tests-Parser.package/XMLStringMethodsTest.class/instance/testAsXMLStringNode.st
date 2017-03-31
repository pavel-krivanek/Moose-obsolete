tests
testAsXMLStringNode
	| node |

	node := 'test' asXMLStringNode.
	self
		assert: node class == XMLString;
		assert: node string = 'test'.