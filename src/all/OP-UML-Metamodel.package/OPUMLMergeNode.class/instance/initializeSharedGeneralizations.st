initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ControlNode put: (OPUMLControlNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MergeNode put: self.