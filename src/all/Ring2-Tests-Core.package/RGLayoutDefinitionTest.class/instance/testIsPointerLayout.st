tests
testIsPointerLayout

	self assert: (RGFixedLayout unnamed isPointerLayout).
	self deny: (RGEmptyLayout unnamed isPointerLayout).
	