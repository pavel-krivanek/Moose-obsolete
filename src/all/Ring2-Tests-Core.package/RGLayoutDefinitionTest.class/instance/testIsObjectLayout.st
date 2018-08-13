tests
testIsObjectLayout

	self assert: (RGImmediateLayout unnamed isObjectLayout).
	self deny: (RGEmptyLayout unnamed isObjectLayout).
	