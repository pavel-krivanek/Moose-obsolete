drawing
drawOn: aCanvas

	self checkSession.

	surface drawDuring: [:canvas |  
		
		surface clear.
"		canvas setPaint: Color red;
		drawShape:  (0@0 corner: self extent).
"		canvas pathTransform restoreAfter: [
			canvas pathTransform scaleBy:zoom.
			svg renderOn: canvas viewportExtent: self extent.
		]
	 ].
	aCanvas translucentImage: surface asForm at: self innerBounds origin