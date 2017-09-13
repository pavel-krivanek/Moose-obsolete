initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CombinedFragment put: (OPUMLCombinedFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConsiderIgnoreFragment put: self.