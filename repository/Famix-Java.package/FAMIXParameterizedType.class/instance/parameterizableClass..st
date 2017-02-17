accessing
parameterizableClass: aParameterizableClass

	parameterizableClass := FMMultivalueLink 
		on: self
		update: #parameterizedTypes
		from: self parameterizableClass
		to: aParameterizableClass.
	self resetMooseName