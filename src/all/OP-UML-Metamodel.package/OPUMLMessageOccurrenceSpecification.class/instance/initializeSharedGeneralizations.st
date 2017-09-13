initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEnd put: (OPUMLMessageEnd newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OccurrenceSpecification put: (OPUMLOccurrenceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageOccurrenceSpecification put: self.