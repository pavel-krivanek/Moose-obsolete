adding
canBeTargetFor: aController
	^ (aController isKindOf: OPUmlClassController)
		| (aController isKindOf: OPUmlPackageController)
		| (aController isKindOf: OPUmlEnumerationController)