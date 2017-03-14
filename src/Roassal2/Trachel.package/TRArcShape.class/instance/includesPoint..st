testing
includesPoint: aPoint
	| pDistanceOrigin pointAngle inside aAngle bAngle thePoint |
	(alphaAngle value = betaAngle value) ifTrue: [ ^ false ].
	inside:=true.
	aAngle := (alphaAngle value % 360 = 0 ) 
		ifFalse: [ alphaAngle value \\  360 ]
		ifTrue: [ alphaAngle value ].
	bAngle := (betaAngle value % 360 = 0 )
		ifFalse: [ betaAngle value \\  360 ]
		ifTrue: [ betaAngle value ].
	thePoint := aPoint - self position.
	pointAngle:= (thePoint angleWith: 0@0) radiansToDegrees \\  360.
	pDistanceOrigin := (thePoint squaredDistanceTo: 0@0) sqrt.
	((pDistanceOrigin < innerRadius value) or: (pDistanceOrigin > externalRadius value))
		ifTrue: [ ^ false ].
	(pointAngle % 360 = 0 )
		ifTrue:[
			(aAngle % 360 = 0) ifTrue: [^ true ].
			(bAngle % 360 = 0) ifTrue: [ ^ true ] ].
	(aAngle < bAngle)
	ifTrue:[
		(pointAngle >= aAngle) ifTrue:[ inside:=inside not ].
		(pointAngle <= bAngle) ifTrue:[ inside:=inside not ] ]
	ifFalse:[
		(bAngle = 0) ifTrue:[bAngle:=360].
		(pointAngle <= aAngle) ifTrue:[ inside:=inside not ].
		(pointAngle <= bAngle) ifTrue:[ inside:=inside not ] ].
	^ inside