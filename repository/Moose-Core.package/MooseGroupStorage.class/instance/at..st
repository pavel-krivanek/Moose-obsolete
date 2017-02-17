accessing
at: uniqueName 
	 
	^self 
		at: uniqueName asSymbol
		ifAbsent: [nil]