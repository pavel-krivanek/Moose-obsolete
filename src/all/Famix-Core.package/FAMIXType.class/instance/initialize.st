initialize-release
initialize
	super initialize.
	methods := FMNullMultivalueLink on: self opposite: #parentType: selector: #methods.
	container := nil.
	attributes := FMNullMultivalueLink on: self opposite: #parentType: selector: #attributes.
	behavioursWithDeclaredType := FMNullMultivalueLink on: self opposite: #declaredType: selector: #behavioursWithDeclaredType.
	structuresWithDeclaredType := FMNullMultivalueLink on: self opposite: #declaredType: selector: #structuresWithDeclaredType.
	incomingReferences := FMNullMultivalueLink on: self opposite: #target: selector: #incomingReferences