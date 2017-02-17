tests
testNewCData
	| cdata |

	cdata := self newNode newCData: 'test'.
	self
		assert: cdata isCData;
		assert: cdata string = 'test'.