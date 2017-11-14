public
updateNodes
	| att dy x y side |
	elements doWithIndex: [ :e :i | | le |
		le := lelements at: i. 
		att := e attributes.
		dy := att at: #dy.
		x := att at: #x.
		y := att at: #y.
		
		e translateTo: x @ (y+(dy/2)).
		e trachelShape height: dy.
		side := (att includesKey: #last) 
			ifTrue: [ #left ] 
			ifFalse: [ #right ].
		RTConstraint new 
			fix: e;
			movable: le;
			outer;
			perform: side;
			middle;
			horizontalPadding: 5;
			stick.
		 ].
	edges ifNil: [ ^ self ].
	edges do: #updateShape