as yet unclassified
setZoom: aZoom
	|  newExtent oldCenter |
	currentZoom := aZoom.
	newExtent := basicExtent * aZoom.
	
	oldCenter := animCenter.
	self bounds: (animCenter - (newExtent /2) extent: newExtent).
	animCenter := oldCenter.
	
	self changed