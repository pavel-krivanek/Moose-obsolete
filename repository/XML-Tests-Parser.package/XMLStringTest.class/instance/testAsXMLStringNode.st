tests
testAsXMLStringNode
	| stringNode |

	stringNode := self newNode.
	self assert: stringNode asXMLStringNode == stringNode.