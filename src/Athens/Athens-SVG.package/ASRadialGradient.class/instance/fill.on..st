operations
fill: shape on: aCanvas
	
	| ramp grad p1 p2 |
	aCanvas paintTransform restoreAfter: [
		ramp := self colorRampWithOpacity: shape fill_opacity * shape opacity. 

		p1 := gradientTransform transform: cx@cy.
		
		fx ifNil: [ fx := cx ].
		fy ifNil: [ fy := cy ].
			
		p2 := gradientTransform transform: fx@fy.
		
		grad := aCanvas surface createRadialGradient: ramp center: p1 radius: r focalPoint: p2.
		
		aCanvas setPaint: grad.
		aCanvas draw
	].