initialize-release
initialize
	super initialize.
	annotationAttributeInstances := FMNullMultivalueLink 
		on: self
		opposite: #annotationTypeAttribute:
		selector: #annotationAttributeInstances.
	declaredType := nil