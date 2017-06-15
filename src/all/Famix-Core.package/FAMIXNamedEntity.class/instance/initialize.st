initialization
initialize
	super initialize.
	isStub := false.
	receivingInvocations := FMNullMultivalueLink on: self opposite: #receiver: selector: #receivingInvocations.
	modifiers := Set new.
	annotationInstances := FMNullMultivalueLink on: self opposite: #annotatedEntity: selector: #annotationInstances