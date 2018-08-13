tests
testIsWeakLayout

	self assert: (RGWeakLayout unnamed isWeakLayout).
	self deny: (RGEmptyLayout unnamed isWeakLayout).
	