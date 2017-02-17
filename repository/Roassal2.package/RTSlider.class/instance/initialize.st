initialization
initialize
	super initialize.
	hasLabel := false.
	callback := [ :aValue |  ].
	sliderElements := #().
	min := 0.0.
	max := 1.0.
	value := 0.5.
	useIntegerLabel := false.
	size := 200.
	self horizontal