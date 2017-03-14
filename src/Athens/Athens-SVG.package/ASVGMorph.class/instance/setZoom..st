accessing
setZoom: factor

	| w h |
	w := svg width valueForDPI: self screenDPI.
	h := svg height valueForDPI: self screenDPI.
	zoom := factor.
	surface := AthensCairoSurface extent: (w*factor) asInteger @ ((h*factor) asInteger + 1).
	
	self extent: surface extent.
	self changed