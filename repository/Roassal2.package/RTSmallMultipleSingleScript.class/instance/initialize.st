initialization
initialize
	super initialize.
	scale := #yourself.
	sortX := [ :assoc | assoc key ].
	sortY := [ :assoc | assoc key ]