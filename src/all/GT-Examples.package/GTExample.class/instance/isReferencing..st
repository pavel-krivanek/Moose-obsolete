testing
isReferencing: aLiteral
	^ (self hasSubject: aLiteral)
		or: [ (self subjects anySatisfy: [ :subject | subject hasLiteralThorough: aLiteral ])
			or: [ (self exists and: [ self method hasLiteralThorough: aLiteral ])
				or: [ (self methodClass name asString = aLiteral asString) ] ] ]