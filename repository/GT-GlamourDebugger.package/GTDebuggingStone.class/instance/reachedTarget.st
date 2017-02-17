testing
reachedTarget

	^ (self class canUnderstand: self tagetSelector) 	
		ifFalse: [ true ]
		ifTrue: [ self perform: self tagetSelector ]