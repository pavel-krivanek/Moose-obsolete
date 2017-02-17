public - condition
ifElement: blockCondition then: thenLayout

"
Here is an example:
b := RTMondrian new.
b nodes: (1 to: 100).
b layout 
	force;
	ifElement: #isNotConnected then: RTGridLayout new.
b edges connectTo: [ :v | v \\ 4 ].
b.
"
	
	| oldLayout |
	oldLayout := layout.
	layout := RTConditionalLayout new.
	layout condition: blockCondition.
	layout thenLayout: thenLayout.
	layout elseLayout: oldLayout.
	^ layout