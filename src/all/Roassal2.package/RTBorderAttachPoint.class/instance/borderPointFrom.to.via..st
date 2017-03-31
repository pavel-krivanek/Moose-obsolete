public - hooks
borderPointFrom: aSource to: aTarget via: aLine
	^ ((aLine intersect: aSource) detectMin: [ :p | p dist: aLine to ])
		ifNil: [ aSource center ]