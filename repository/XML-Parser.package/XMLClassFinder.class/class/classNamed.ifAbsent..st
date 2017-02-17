accessing
classNamed: aClassName ifAbsent: aBlock
	"'self environment at:' is the proper way to get a class that may not,
	exist, not 'Smalltalk at:', 'Smalltalk globals at:' or '#ClassName asClass'"
	^ self environment
		at: aClassName asSymbol
		ifAbsent: aBlock