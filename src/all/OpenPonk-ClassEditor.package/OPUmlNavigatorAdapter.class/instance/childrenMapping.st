accessing
childrenMapping
	^ {OPUMLPackage -> #packagedElements.
	OPUMLProfile -> #packagedElements.
	OPUMLModel -> #packagedElements.
	OPUMLClass -> [ :cls | cls ownedAttributes asArray , cls ownedOperations asArray ].
	OPUMLEnumeration -> #ownedLiterals}