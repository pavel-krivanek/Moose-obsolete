tests
testNewPITargetData
	| nodeWithElements pi |

	super testNewPITargetData.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				piClass: XMLFPI).
	pi :=
		nodeWithElements
			newPITarget: 'target'
			data: 'data'.
	self
		assert: pi class == XMLFPI;
		assert: pi target = 'target';
		assert: pi data = 'data'.