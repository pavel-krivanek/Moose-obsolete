tests - edges
testNotUseInLayoutInInner
	| v e1 e2 e3 e20 e21 e22 e4 e23 |
	b nodes: #(1 20) forEach: [ :n |
		b nodes: (n + 1 to: n + 3).
		b edges 
			connectTo: [ :nn | nn + 2 ].
		
		b edges 
			notUseInLayout;
			connectTo: [ :nn | nn + 1 ].
		b layout tree.
	].
	b build.
	v := b view.
	
	e1 := v elementFromModel: 1.
	e2 := v elementFromModel: 2.
	e3 := v elementFromModel: 3.
	e4 := v elementFromModel: 4.
	e20 := v elementFromModel: 20.
	e21 := v elementFromModel: 21.
	e22 := v elementFromModel: 22.
	e23 := v elementFromModel: 23.
	self assert: e2 encompassingRectangle topLeft - e1 encompassingRectangle topLeft equals: 5.5 @ 5.0.
	self assert: e4 encompassingRectangle topLeft - e1 encompassingRectangle topLeft equals: 5.5 @ 30.0.
	
	self assert: e21 encompassingRectangle topLeft - e20 encompassingRectangle topLeft equals: 5.5 @ 5.0.
	self assert: e23 encompassingRectangle topLeft - e20 encompassingRectangle topLeft equals: 5.5 @ 30.0.