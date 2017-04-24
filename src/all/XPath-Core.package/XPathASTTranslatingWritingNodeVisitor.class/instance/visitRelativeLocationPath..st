visiting - location paths
visitRelativeLocationPath: aRelativeLocationPath
	self
		emit: $(;
		emitStartGroupingsForLocationPath: aRelativeLocationPath;
		emitAll: self contextNodeVariable.
	super visitRelativeLocationPath: aRelativeLocationPath.
	self
		emit: $);
		emitNodeSetSortForLocationPath: aRelativeLocationPath.
	^ aRelativeLocationPath.