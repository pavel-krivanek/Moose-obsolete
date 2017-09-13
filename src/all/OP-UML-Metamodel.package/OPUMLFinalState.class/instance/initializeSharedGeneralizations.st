initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: (OPUMLVertex newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #State put: (OPUMLState newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FinalState put: self.