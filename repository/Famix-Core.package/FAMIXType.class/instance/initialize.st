initialize-release
initialize
	super initialize.
	subInheritances := FMNullMultivalueLink on: self opposite: #superclass: selector: #subInheritances.
	methods := FMNullMultivalueLink on: self opposite: #parentType: selector: #methods.
	container := nil.
	superInheritances := FMNullMultivalueLink on: self opposite: #subclass: selector: #superInheritances.
	attributes := FMNullMultivalueLink on: self opposite: #parentType: selector: #attributes.
	behavioursWithDeclaredType := FMNullMultivalueLink on: self opposite: #declaredType: selector: #behavioursWithDeclaredType.
	structuresWithDeclaredType := FMNullMultivalueLink on: self opposite: #declaredType: selector: #structuresWithDeclaredType.
	incomingReferences := FMNullMultivalueLink on: self opposite: #target: selector: #incomingReferences