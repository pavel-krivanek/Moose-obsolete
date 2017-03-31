tests
testNewCData
	| cdata |

	cdata := self newFactory newCData: 'test'.
	self
		assert: cdata class == XMLCData;
		assert: cdata string = 'test'.