rendering
renderOn: aCanvas viewportExtent: extent

	viewBox ifNil: [ ^self renderOn: aCanvas ].
	
	aCanvas pathTransform restoreAfter: [
		aCanvas pathTransform
			translateX: viewBox origin x negated Y: viewBox origin y negated;
			scaleX: (extent x / viewBox width) asFloat Y: (extent y / viewBox height) asFloat.
		self renderOn: aCanvas.		
	]