tests
testNewCData
	| cdata |

	super testNewCData.

	cdata := self newFactoryWithClasses newCData: 'test'.
	self
		assert: cdata class == self cdataClass;
		assert: cdata string = 'test'.