initialization
initialize
	super initialize.
	labelled := false.
	callback := [ :arg1 :arg2 | ].
	sliderElements := #().
	min := 0.0.
	max := 1.0.
	useIntegerLabel := false.