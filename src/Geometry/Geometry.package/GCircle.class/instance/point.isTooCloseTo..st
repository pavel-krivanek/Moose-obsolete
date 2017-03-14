public interface
point: p1 isTooCloseTo: p2
	^ 1 -( self cosBetween: p1 and: p2 ) <~ 0.1

