*Geometry
intersectionPointWithRay: ray

^ self edges collect:[ :edge | edge intersectionPointWithRay: ray]  
				thenReject: #isNil.
	