drawing - helpers
computeRoundBoxPathFor: aShape
	| r vr hr rectangle |
	aShape canvas ifNil: [ ^ nil ].
	r := aShape borderRadius.
	vr := 0 @ r.
	hr := r @ 0.
	rectangle := aShape basicEncompassingRectangle.
	^ aShape athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: rectangle topLeft + hr;
				lineTo: rectangle topRight - hr;
				cwArcTo: rectangle topRight + vr angle: Float halfPi;
				lineTo: rectangle bottomRight - vr;
				cwArcTo: rectangle bottomRight - hr angle: Float halfPi;
				lineTo: rectangle bottomLeft + hr;
				cwArcTo: rectangle bottomLeft - vr angle: Float halfPi;
				lineTo: rectangle topLeft + vr;
				cwArcTo: rectangle topLeft + hr angle: Float halfPi;
				closePath ]