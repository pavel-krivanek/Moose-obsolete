adding
modelToControllerMapping
	^ {OPUMLClass -> OPUmlClassController.
	OPUMLProperty -> OPUmlAttributeController.
	OPUMLOperation -> OPUmlOperationController.
	OPUMLGeneralization -> OPUmlGeneralizationController.
	OPUMLAssociation -> OPUmlAssociationController.
	OPUMLPackage -> OPUmlPackageController.
	OPUMLModel -> OPUmlPackageController.
	OPUMLProfile -> OPUmlPackageController.
	OPUMLExtension -> OPUmlExtensionController.
	OPUMLExtensionEnd -> OPUmlAttributeController.
	OPUMLEnumeration -> OPUmlEnumerationController.
	OPUMLEnumerationLiteral -> OPUmlEnumerationLiteralController.
	OPUMLStereotype -> OPUmlStereotypeController} asDictionary