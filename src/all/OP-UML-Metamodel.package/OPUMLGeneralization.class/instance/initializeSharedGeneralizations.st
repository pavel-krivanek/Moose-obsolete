initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Generalization put: self.