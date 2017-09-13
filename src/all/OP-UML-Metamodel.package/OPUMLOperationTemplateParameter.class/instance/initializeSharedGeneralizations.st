initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #TemplateParameter put: (OPUMLTemplateParameter newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OperationTemplateParameter put: self.