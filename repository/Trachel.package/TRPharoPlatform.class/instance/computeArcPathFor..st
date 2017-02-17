drawing - helpers
computeArcPathFor: aShape
	| i e aAngle bAngle aSin aCos bSin bCos |
	aShape canvas ifNil: [ ^ nil ].
	aAngle:=aShape alphaAngle value degreesToRadians.
	bAngle:=aShape betaAngle value degreesToRadians.
	i := aShape innerRadius value.
	e := aShape externalRadius value.
	aCos := aAngle cos.
	aSin := aAngle sin negated.
	bCos := bAngle cos.
	bSin := bAngle sin negated.
	^ aShape athensCanvas
			createPath: [ :builder | 
				builder
					absolute;
					moveTo: ((i * (bCos)) @ (i * (bSin)));
					arcTo:  ((i * (aCos)) @ (i * (aSin))) angle: bAngle - aAngle cw: true;
					ccwArcTo: ((e * (aCos)) @ (e * (aSin))) angle: 0;
					ccwArcTo: ((e * (bCos)) @ (e * (bSin))) angle: bAngle  - aAngle;
					ccwArcTo: ((i * (bCos)) @ (i * (bSin))) angle: 0 ]