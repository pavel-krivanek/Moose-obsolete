accessing
definingMethod: aMethod 
	definingMethod := FMMultivalueLink 
		on: self
		update: #declaredExceptions
		from: self definingMethod
		to: aMethod