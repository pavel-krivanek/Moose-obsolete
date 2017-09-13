initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateSignature put: (OPUMLTemplateSignature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableTemplateSignature put: self.