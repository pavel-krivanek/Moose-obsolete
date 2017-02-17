sources
exampleNumbersAndBeziers

| b |
b := RTMondrian new.

b nodes: (1 to: 300).
b edges connectFrom: [ :value | value // 2 ].

b shape 
	bezierLineFollowing: [ :value | value // 2 ];
	color: Color blue trans.
b edges 
	notUseInLayout;
	connectTo: [ :value | (value / 10) asInteger + (value \\ 10) ].

b layout cluster.
^ b