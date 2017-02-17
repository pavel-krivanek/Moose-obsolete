tests
testLabelShapeColor
	| b elements |
	b := RTDSM new.
	b objectsX: #(1 2 3 4).
	b objectsY: #( 'A' 'B' 'C' ).
	b labelShapeX 
		if: [:n | n even ] color: Color red.
	b build.
	elements := b view elements select: [ :e | 
		e trachelShape class = TRLabelShape and: [ e model isKindOf: Number ] ].
	self assert: elements first model equals: 1.
	self assert: elements second color equals: Color red
		
	