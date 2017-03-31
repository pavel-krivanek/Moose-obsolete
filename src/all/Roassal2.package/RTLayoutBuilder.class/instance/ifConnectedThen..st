public - condition
ifConnectedThen: thenLayout
"
b := RTMondrian new.
b nodes: (1 to: 100).
b layout 
	force;
	ifConnectedThen: RTGridLayout new.
b edges connectTo: [ :v | v \\ 4 ].
b
"
	^ self ifElement: #isConnected then: thenLayout