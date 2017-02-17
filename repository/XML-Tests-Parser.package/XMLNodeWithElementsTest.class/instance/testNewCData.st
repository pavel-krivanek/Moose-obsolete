tests
testNewCData
	| nodeWithElements cdata |

	super testNewCData.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				cdataClass: XMLFCData).
	cdata := nodeWithElements newCData: 'test'.
	self
		assert: cdata class == XMLFCData;
		assert: cdata string = 'test'.