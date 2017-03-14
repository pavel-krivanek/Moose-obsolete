visiting - location paths
visitAbsoluteLocationPath: anAbsoluteLocationPath
	| oldLocationPathRootVariable |

	oldLocationPathRootVariable := locationPathRootVariable.
	locationPathRootVariable := self documentRootVariable.
	self
		emit: $(;
		emitStartGroupingsForLocationPath: anAbsoluteLocationPath;
		emitInitializingDocumentRootVariableReference.
	super visitAbsoluteLocationPath: anAbsoluteLocationPath.
	self emit: $).
	locationPathRootVariable := oldLocationPathRootVariable.
	^ anAbsoluteLocationPath.