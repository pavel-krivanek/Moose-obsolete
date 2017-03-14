tests
testPainting

	| c s |
	c := TRCanvas new.

	s :=  TRPolygonShape new.
	c addShape: s.
	c buildMorph drawOnMockCanvas