initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkAction put: (OPUMLLinkAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #WriteLinkAction put: (OPUMLWriteLinkAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CreateLinkAction put: (OPUMLCreateLinkAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CreateLinkObjectAction put: self.