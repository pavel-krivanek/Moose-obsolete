tests
testRemovingSubshapes

	| c s1 s2 s3 s4 |
	c := TRCompositeShape new.
	s1 := TRBoxShape new.
	s2 := TRBoxShape new.
	s3 := TRLabelShape new.
	s4 := TRLabelShape new.
	c addShape: s1; addShape: s2; addShape: s3; addShape: s4.
	
	self assert: c allShapes size equals: 4.
	c removeShapesSuchAs: [ :s | s class == TRLabelShape ].
	self assert: c allShapes size equals: 2.
	self assert: c allShapes asArray equals: (Array with: s1 with: s2)