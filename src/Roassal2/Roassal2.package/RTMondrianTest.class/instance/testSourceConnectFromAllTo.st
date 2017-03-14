tests - source
testSourceConnectFromAllTo

	b nodes: (1 to: 2) forEach: [ :each |
		b node: each * 10 ].
	b edges source: (Array with: (Array with: 10) -> 20) connectFromAll: #key to: #value.
	b build.
	
	self assert: b view edges size equals: 1