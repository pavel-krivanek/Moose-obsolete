initialization
initialize
	super initialize.
	parameterizedTypes := FMMultivalueLink 
		on: self
		opposite: #parameterizableClass: