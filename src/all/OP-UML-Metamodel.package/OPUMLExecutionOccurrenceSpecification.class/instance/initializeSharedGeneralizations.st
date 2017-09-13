initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OccurrenceSpecification put: (OPUMLOccurrenceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutionOccurrenceSpecification put: self.