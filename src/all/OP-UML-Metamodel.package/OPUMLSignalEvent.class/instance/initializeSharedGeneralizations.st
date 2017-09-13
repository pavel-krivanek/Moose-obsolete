initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Event put: (OPUMLEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEvent put: (OPUMLMessageEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SignalEvent put: self.