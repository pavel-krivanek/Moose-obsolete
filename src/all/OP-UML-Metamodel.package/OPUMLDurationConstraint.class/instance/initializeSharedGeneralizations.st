initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Constraint put: (OPUMLConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #IntervalConstraint put: (OPUMLIntervalConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DurationConstraint put: self.