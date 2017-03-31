tests - source
testSourceConnectFromToAll

	b nodes: (1 to: 2) forEach: [ :each |
		b node: each * 10 ].
	b edges source: (Array with: 10 -> (Array with: 20)) connectFrom: #key toAll: #value.
	b build.
	
	self assert: b view edges size equals: 1