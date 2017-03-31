initialize
initialize
	super initialize.
	connectToElements := [ :el | Array with: el ].
	reciber := #yourself.
	self shape: RTLine