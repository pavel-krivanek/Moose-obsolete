initialization
initializeDirectGeneralizations
	directGeneralizations := {
		sharedGeneralizations at: #DeploymentTarget.
		sharedGeneralizations at: #PackageableElement.
		sharedGeneralizations at: #DeployedArtifact.
	}