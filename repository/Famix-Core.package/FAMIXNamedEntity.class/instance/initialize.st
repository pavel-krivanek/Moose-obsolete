initialization
initialize
	super initialize.
	name := nil.
	isStub := false.
	modifiers := Set new.
	annotationInstances := FMNullMultivalueLink on: self opposite: #annotatedEntity: selector: #annotationInstances.
	self class initializeSlots: self.