initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEnd put: (OPUMLMessageEnd newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Gate put: self.