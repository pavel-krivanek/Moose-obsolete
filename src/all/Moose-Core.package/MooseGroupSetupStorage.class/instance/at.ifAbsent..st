accessing
at: uniqueName ifAbsent: exceptionBlock 
	 | s |
	s := uniqueName asSymbol.
	^self 
		detect: [:each | s == each mooseName asSymbol] 
		ifNone: exceptionBlock