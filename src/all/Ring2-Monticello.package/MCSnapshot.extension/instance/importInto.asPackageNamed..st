*Ring2-Monticello
importInto: anRGEnvironment asPackageNamed: aPackageName

	| anRGPacakgeDefinition |
	anRGPacakgeDefinition := anRGEnvironment ensurePackageNamed: aPackageName.
	self definitions do: [ :each |
		each ensureRingDefinitionIn: anRGEnvironment package: anRGPacakgeDefinition ].

	^ anRGPacakgeDefinition