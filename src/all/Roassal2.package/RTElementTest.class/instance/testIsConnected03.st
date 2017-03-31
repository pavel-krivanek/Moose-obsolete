edges
testIsConnected03
	| e1 l |
	e1 := RTBox element.
	l := RTLine edgeFrom: e1 to: e1.	
	self assert: e1 isConnected.
	self deny: e1 isNotConnected.
