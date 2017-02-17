accessing
at: uniqueName withType: aClass ifAbsent: exceptionBlock
	| s |
	s := uniqueName asSymbol.
	^ (self selectAllWithType: aClass) detect: [ :each | s == each mooseName asSymbol ] ifNone: exceptionBlock