adding
canBeSourceFor: aController
	^ (aController isKindOf: OPUmlGeneralizationController)
		| (aController isKindOf: OPUmlAssociationController)
		| (aController isKindOf: OPUmlExtensionController)		
		| (aController isKindOf: MetamodeEditorGeneralizationController)