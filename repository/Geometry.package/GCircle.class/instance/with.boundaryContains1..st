public interface
with: p1 boundaryContains1: aPoint
 ( self boundaryContains: aPoint )
	ifFalse:[
		(self point: p1 isTooCloseTo: aPoint) 
			ifTrue:[ |cir newCenter| 
				newCenter := (self center + (self center dist: aPoint))/2.
				cir := GCircle center: newCenter radius: (self radius + (self radius dist: aPoint))/2 ]
		
		]
