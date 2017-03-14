hooks
updateFor: anElement trachelShape: trachelShape
	trachelShape isNil ifTrue: [ ^ self ].
	trachelShape 
		alphaAngle: (self alphaAngleFor: anElement) 
		betaAngle: (self betaAngleFor: anElement)  
		innerRadius: (self innerRadiusFor: anElement) 
		externalRadius: (self externalRadiusFor: anElement);
		color: (self colorFor: anElement);
		rotateByDegrees:  (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement).
	^ trachelShape