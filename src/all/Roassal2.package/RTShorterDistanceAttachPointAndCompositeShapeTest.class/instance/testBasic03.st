tests
testBasic03

	| attachPoint s1 s2 e1 e2 v |
	attachPoint := RTShorterDistanceAttachPointAndCompositeShape new
							composedShapeSelection: #first.
	
	s1 := RTBox new color: Color red.
	s2 := RTCompositeShape
        with: (RTBox new size: 20; color: Color green)
        with: (RTBox new color: Color blue).
	s2 horizontal.
	e1 := s1 elementOn: #atomic.
	e2 := s2 elementOn: #composite.					
	
	v := RTView new.
	v add: e1; add: e2.
	
	e2 translateTo: 20 @ 20.
	
	self deny: (attachPoint hasCompositeShape: e1).
	self assert: (attachPoint hasCompositeShape: e2).
	
	self assert: (attachPoint trachelShapeToBeConsideredOf: e1) color equals: Color red.
	self assert: (attachPoint trachelShapeToBeConsideredOf: e2) color equals: Color green.
	self assert: (attachPoint getEncompassingRectangleOf: e1) ~= (attachPoint getEncompassingRectangleOf: e2).
	