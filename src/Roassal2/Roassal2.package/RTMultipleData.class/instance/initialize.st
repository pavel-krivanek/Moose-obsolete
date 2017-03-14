initialization
initialize
	super initialize.
	points := #().
	metrics := OrderedCollection new.
	groupedElements := OrderedCollection new.
	x := [ :anElement | elements indexOf: anElement ].
	y := [ :anElement | anElement model ].
	self resetMinAndMax.
	self resetShapeBuilderForBar.
