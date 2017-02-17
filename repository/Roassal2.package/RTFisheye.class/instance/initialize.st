initialization
initialize
	super initialize.
	radius := 200.
	distortion := 2.
	k0 := k1 := nil.
	focus := 0@0.
	position := #position.
	self rescale.