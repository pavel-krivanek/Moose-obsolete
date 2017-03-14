tests
testAddCDataNodeFactoryUse
	| nodeWithElements firstCDataNode lastCDataNode |

	nodeWithElements := self newNode.
	firstCDataNode := nodeWithElements addCData: 'one'.
	nodeWithElements nodeFactory:
		(XMLPluggableNodeFactory new
			cdataClass: XMLFCData).
	lastCDataNode := nodeWithElements addCData: 'two'.
	self
		assert: nodeWithElements nodes size = 2;
		assert: firstCDataNode class == XMLCData;
		assert: firstCDataNode string = 'one';
		assert: lastCDataNode class == XMLFCData;
		assert: lastCDataNode string = 'two'.