accessing
definingMethod: aMethod 
	definingMethod := FMMultivalueLink 
		on: self
		update: #caughtExceptions
		from: self definingMethod
		to: aMethod