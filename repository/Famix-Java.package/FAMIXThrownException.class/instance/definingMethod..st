accessing
definingMethod: aMethod 
	definingMethod := FMMultivalueLink 
		on: self
		update: #thrownExceptions
		from: self definingMethod
		to: aMethod