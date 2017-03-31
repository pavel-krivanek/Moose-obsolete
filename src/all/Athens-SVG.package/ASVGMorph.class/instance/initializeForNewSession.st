session management
initializeForNewSession	
	| w h |
	svg width ifNotNil: [
		w := svg width valueForDPI: self screenDPI.
		h := svg height valueForDPI: self screenDPI.
		] ifNil: [
		w := 500. h := 400.
		].
	surface := AthensCairoSurface extent: (w asInteger @ (h asInteger + 1)).
	
	self extent: surface extent.
	
	session := Smalltalk session.
	
	