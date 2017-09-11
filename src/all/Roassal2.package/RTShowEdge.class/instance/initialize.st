initialize
initialize
	super initialize.
	connectToElements := [ :el | Array with: el ].
	receiver := #yourself.
	self shape: RTLine new