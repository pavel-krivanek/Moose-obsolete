tests
testAllSlots

	| env aSuperclass aSubclass |
	
	env := RGEnvironment new.
	aSuperclass := env ensureClassNamed: 'Superclass'.
	aSubclass := env ensureClassNamed: 'Subclass'.
	aSubclass superclass: aSuperclass.

	aSuperclass instanceVariables: #(a b c).
	aSubclass instanceVariables: #(d e f).
	
	self assert: (aSubclass allSlots collect: #name) equals: #(a b c d e f).