edges
testIsConnected

	self deny: RTElement new isConnected.
	self assert: RTElement new isNotConnected.