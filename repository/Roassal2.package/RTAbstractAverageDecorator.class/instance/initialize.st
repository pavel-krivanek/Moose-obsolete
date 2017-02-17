initialization
initialize
	super initialize.
	self noLabel.
	labelBlock := #yourself.
	shapes := OrderedCollection new.
	color := RTLabel defaultColor