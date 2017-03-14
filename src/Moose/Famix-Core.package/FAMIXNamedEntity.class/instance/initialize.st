initialize-release
initialize
	super initialize.
	name := nil.
	isStub := false.
	receivingInvocations := FMNullMultivalueLink on: self opposite: #receiver: selector: #receivingInvocations.
	modifiers := Set new.
	parentPackage := nil.
	annotationInstances := FMNullMultivalueLink on: self opposite: #annotatedEntity: selector: #annotationInstances