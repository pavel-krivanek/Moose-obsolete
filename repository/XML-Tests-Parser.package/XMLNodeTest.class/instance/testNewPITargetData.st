tests
testNewPITargetData
	| pi |

	pi :=
		self newNode
			newPITarget: 'target'
			data: 'data'.
	self
		assert: pi isPI;
		assert: pi target = 'target';
		assert: pi data = 'data'.