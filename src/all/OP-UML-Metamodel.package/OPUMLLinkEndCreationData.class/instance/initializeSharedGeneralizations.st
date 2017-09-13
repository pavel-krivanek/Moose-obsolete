initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #LinkEndData put: (OPUMLLinkEndData newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkEndCreationData put: self.