as yet unclassified
drawOn: aCanvas
	
	svg ifNotNil: [
		
		surface drawDuring: [:canvas |  
		
			surface clear.
			canvas pathTransform restoreAfter: [
				canvas pathTransform scaleBy: (currentZoom * svgZoom) asFloat.
				svg renderOn: canvas.
			]
		 ].
		aCanvas translucentImage: surface asForm at: self innerBounds origin
		
	] ifNil: [
		super drawOn: aCanvas.
	]