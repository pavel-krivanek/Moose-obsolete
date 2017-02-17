initialize-release
initialize
	super initialize.
	values := FMNullMultivalueLink 
		on: self
		opposite: #parentEnum:
		selector: #values
