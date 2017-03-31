testing
testProd
	result := self parse: '1' rule: #prod.
	self assert: result = 1.