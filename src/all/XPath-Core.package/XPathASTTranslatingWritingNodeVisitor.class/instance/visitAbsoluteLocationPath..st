visiting - location paths
visitAbsoluteLocationPath: anAbsoluteLocationPath
	self
		emit: $(;
		emitStartGroupingsForLocationPath: anAbsoluteLocationPath;
		emitInitializingDocumentRootVariableReference.
	super visitAbsoluteLocationPath: anAbsoluteLocationPath.
	self
		emit: $);
		emitNodeSetSortForLocationPath: anAbsoluteLocationPath.
	^ anAbsoluteLocationPath.