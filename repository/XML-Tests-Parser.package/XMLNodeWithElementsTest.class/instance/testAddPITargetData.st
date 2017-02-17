tests
testAddPITargetData
	| nodeWithElements pi |

	super testAddPITargetData.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				piClass: XMLFPI).
	pi :=
		nodeWithElements
			addPITarget: 'target'
			data: 'data'.
	self
		assert: nodeWithElements nodes size = 1;
		assert: nodeWithElements firstNode == pi;
		assert: pi class == XMLFPI;
		assert: pi target = 'target';
		assert: pi data = 'data'.