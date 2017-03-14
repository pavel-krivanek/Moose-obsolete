as yet unclassified
setShapeOn: aCanvas

	self checkCacheFor: aCanvas.
	aCanvas setShape: athensPath.
	