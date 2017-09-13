initialization
initializeDirectGeneralizations
	directGeneralizations := {
		sharedGeneralizations at: #PackageableElement.
		sharedGeneralizations at: #TemplateableElement.
		sharedGeneralizations at: #Namespace.
	}