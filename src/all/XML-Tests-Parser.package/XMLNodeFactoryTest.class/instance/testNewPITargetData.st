tests
testNewPITargetData
	| pi |

	pi :=
		self newFactory
			newPITarget: 'target'
			data: 'data'.
	self
		assert: pi class == XMLPI;
		assert: pi target = 'target';
		assert: pi data = 'data'.