tests
testLabelShapeHeight
	| b elements |
	b := RTDSM new.
	b objectsX: #(1 2 3 4).
	b objectsY: #( 'A' 'B' 'C' ).
	b labelShapesDo: [ :l| l height: 30; color: Color blue ].
	b build.
	elements := b view elements select: [ :e | 
		e trachelShape class = TRLabelShape ].
	self assert: elements first color equals: Color blue.
	self assert: elements first height > TRLabelShape defaultFontSize.
		
	