tests
testNewStringNode
	| nodeWithElements stringNode |

	super testNewStringNode.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				stringNodeClass: XMLFString).
	stringNode := nodeWithElements newStringNode: 'test'.
	self
		assert: stringNode class == XMLFString;
		assert: stringNode string = 'test'.