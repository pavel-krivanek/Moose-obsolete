positioning
reset
	super reset.
	positions := OrderedCollection new: 1024.
	stamps := OrderedCollection new: 1024.
	parsers := OrderedCollection new: 1024