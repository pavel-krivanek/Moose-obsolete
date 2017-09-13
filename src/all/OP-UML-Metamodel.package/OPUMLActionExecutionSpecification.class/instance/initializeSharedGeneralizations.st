initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutionSpecification put: (OPUMLExecutionSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActionExecutionSpecification put: self.