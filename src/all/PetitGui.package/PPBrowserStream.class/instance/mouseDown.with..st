private
mouseDown: anEvent with: aMorph
	| location string parser |
	location := anEvent position.
	string := collection 
		copyFrom: (location x - 5 min: collection size max: 1) asInteger
		to: (location x + 5 min: collection size max: 1) asInteger.
	parser := parsers at: location y