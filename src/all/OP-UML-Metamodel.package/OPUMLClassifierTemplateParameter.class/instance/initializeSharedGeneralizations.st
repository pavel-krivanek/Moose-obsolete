initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #TemplateParameter put: (OPUMLTemplateParameter newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ClassifierTemplateParameter put: self.