tests
testNewPITargetData
	| pi |

	super testNewPITargetData.

	pi :=
		self newFactoryWithClasses
			newPITarget: 'target'
			data: 'data'.
	self
		assert: pi class == self piClass;
		assert: pi target = 'target';
		assert: pi data = 'data'.