testing
isActive

	^ (self class canUnderstand: self activeSelector) 	
		ifFalse: [ true ]
		ifTrue: [ self perform: self activeSelector ]