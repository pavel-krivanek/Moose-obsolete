operations
fill: aShape on: aCanvas

	| ramp grad p1 p2 fo |
	aCanvas paintTransform restoreAfter: [
		ramp := self colorRampWithOpacity: aShape fill_opacity * aShape opacity. 
		p1 := gradientTransform transform: x1@y1.
		p2 := gradientTransform transform: x2@y2.
		
		grad := aCanvas surface createLinearGradient:  ramp start: p1  stop: p2.
		
		aCanvas setPaint: grad.
		aCanvas draw
	].