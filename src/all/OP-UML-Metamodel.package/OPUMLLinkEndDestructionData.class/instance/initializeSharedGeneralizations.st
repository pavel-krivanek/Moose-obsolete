initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #LinkEndData put: (OPUMLLinkEndData newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkEndDestructionData put: self.