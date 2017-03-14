arithmetic
+ aRay
	| newOrigin vector |
	
	newOrigin := self origin + aRay origin / 2.
	
	vector := (self direction - self origin) + 
				 (aRay direction - aRay origin).

	^ GRay origin: newOrigin direction: newOrigin + vector
 