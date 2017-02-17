edges
testIsConnected02

	| e1 e2 l |
	e1 := RTBox element.
	e2 := RTBox element.
	
	l := RTLine edgeFrom: e1 to: e2.
	
	self assert: e1 isConnected.
	self assert: e2 isConnected.
	self deny: e1 isNotConnected.
	self deny: e2 isNotConnected.