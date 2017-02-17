*Geometry
intersectionPointsWithSegment: segm

^ self edges collect:[ :edge | edge intersectionPointWithSegment: segm]  
				thenReject: #isNil.
	