initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: (OPUMLVertex newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectionPointReference put: self.