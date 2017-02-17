as yet unclassified
stroke: shape on: aCanvas
	| stroke |
	stroke := aCanvas setStrokePaint: (color alpha: (color alpha * shape stroke_opacity)).
	
	stroke width: shape stroke_width.
	
	aCanvas draw