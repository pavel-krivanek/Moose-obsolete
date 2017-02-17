initialization
initialize
	super initialize.
	self default.
	fixedElementX := [ :shape | shape width / 2 ].
	fixedElementY := [ :shape | shape height / 2 ]