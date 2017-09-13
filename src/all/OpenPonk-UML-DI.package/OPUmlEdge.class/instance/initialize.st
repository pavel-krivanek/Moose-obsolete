initialization
initialize
	super initialize.
	source := nil.
	target := nil.
	waypoints := OrderedCollection new.
	(localStyle := OPUmlStyle new)
		strokeColor: Color black;
		strokeWidth: 1