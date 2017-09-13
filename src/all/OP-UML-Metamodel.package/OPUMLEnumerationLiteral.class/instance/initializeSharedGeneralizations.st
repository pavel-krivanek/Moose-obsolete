initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentTarget put: (OPUMLDeploymentTarget newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeployedArtifact put: (OPUMLDeployedArtifact newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InstanceSpecification put: (OPUMLInstanceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #EnumerationLiteral put: self.