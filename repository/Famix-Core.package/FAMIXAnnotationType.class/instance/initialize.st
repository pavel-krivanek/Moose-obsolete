initialize-release
initialize
	super initialize.
	instances := FMNullMultivalueLink 
		on: self
		opposite: #annotationType:
		selector: #instances.
	attributes := FMNullMultivalueLink 
		on: self
		opposite: #annotationType:
		selector: #attributes.

