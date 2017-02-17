accessing
at: uniqueName ifAbsent: exceptionBlock 
	^byName at: uniqueName asSymbol ifAbsent: exceptionBlock