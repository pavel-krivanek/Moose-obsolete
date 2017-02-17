tests
testAddPITargetData
	| nodeWithNodes pi |

	nodeWithNodes := self newNode.
	pi :=
		nodeWithNodes
			addPITarget: 'target'
			data: 'data'.
	self
		assert: nodeWithNodes nodes size = 1;
		assert: nodeWithNodes firstNode == pi;
		assert: pi isPI;
		assert: pi target = 'target';
		assert: pi data = 'data'.