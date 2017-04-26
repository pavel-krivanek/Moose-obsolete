theme
testTheme01

	| m c |
	c := TRCanvas new.
	m := TRMorph new.
	m canvas: c.
	m setTheme.
	self assert: c theme notNil.
	