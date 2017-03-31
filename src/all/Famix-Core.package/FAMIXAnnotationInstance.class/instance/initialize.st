initialize-release
initialize
	super initialize.
	annotatedEntity := nil.
	annotationType := nil.
	attributes := FMNullMultivalueLink 
		on: self
		opposite: #parentAnnotationInstance:
		selector: #attributes.
