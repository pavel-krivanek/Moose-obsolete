initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionUse put: (OPUMLInteractionUse newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PartDecomposition put: self.