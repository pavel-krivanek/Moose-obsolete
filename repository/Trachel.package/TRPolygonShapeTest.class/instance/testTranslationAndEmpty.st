tests
testTranslationAndEmpty

	| c s |
	c := TRCanvas new.

	s :=  TRPolygonShape new.
	s color: nil.
	s vertices: (Array with: 10@10 with: 0@0 with: 10@0).
	c addShape: s.
	s translateBy: 3 @ 3.

	s :=  TRPolygonShape new.
	s color: nil.
	s vertices: (Array with: 10@10 with: 0@0 with: 10@0).
	c addShape: s.
	
	c buildMorph drawOnMockCanvas