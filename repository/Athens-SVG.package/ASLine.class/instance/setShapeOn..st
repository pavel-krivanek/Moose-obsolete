as yet unclassified
setShapeOn: aCanvas
	| path |
	
	path := aCanvas createPath: [:builder |
		builder 
			absolute;
			moveTo: x1@y1;
			lineTo: x2@y2.
	].
	
	aCanvas setShape: path.
