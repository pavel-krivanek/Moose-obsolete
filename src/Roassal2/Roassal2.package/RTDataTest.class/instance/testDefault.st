tests
testDefault
	self assert: RTData new points isEmpty.
	self deny: RTData new shouldConnect