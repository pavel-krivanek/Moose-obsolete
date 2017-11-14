initialization
initialize
	super initialize.
	self default.
	movableElementX := [ :shape | shape width / 2 ].
	movableElementY := [ :shape | shape height / 2 ]