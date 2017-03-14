private
resultsForClass: aClass instvar: instvar ifAbsent: absentBlock
	| ivars |
	ivars := typeResults
		at: aClass
		ifAbsent: absentBlock.
	^ivars
		at: instvar
		ifAbsent: absentBlock