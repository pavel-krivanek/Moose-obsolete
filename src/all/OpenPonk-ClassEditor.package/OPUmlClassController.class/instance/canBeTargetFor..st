adding
canBeTargetFor: aController
	^ (aController isKindOf: OPUmlAttributeController)
		| (aController isKindOf: OPUmlOperationController)
		| (aController isKindOf: OPUmlGeneralizationController)
		| (aController isKindOf: OPUmlAssociationController)
		| (aController isKindOf: OPUmlExtensionController)