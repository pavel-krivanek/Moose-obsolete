tests
testHasBorder

	self deny: RTPopup new hasBorder.
	self assert: (RTPopup new borderColor: Color black; hasBorder).