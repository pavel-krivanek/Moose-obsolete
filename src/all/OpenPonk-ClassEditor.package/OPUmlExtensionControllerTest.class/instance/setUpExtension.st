running
setUpExtension
	artifact := OPUMLClass new name: 'Artifact'.
	library := OPUMLStereotype new name: 'Library'.
	extension := OPUMLExtension new.
	(baseArtifact := OPUMLProperty new)
		name: 'base_Artifact';
		owningClass: library;
		type: artifact.
	(extensionLibrary := OPUMLExtensionEnd new)
		name: 'extension_Library';
		owningAssociation: extension;
		type: library.
	extension
		memberEnds:
			{baseArtifact.
			extensionLibrary}.
	extension ownedEnd: extensionLibrary