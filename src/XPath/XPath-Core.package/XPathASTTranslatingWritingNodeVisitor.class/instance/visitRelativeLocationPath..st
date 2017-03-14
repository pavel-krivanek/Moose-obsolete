visiting - location paths
visitRelativeLocationPath: aRelativeLocationPath
	| oldLocationPathRootVariable |

	oldLocationPathRootVariable := locationPathRootVariable.
	locationPathRootVariable := self contextNodeVariable.
	self
		emit: $(;
		emitStartGroupingsForLocationPath: aRelativeLocationPath;
		emitAll: self contextNodeVariable.
	super visitRelativeLocationPath: aRelativeLocationPath.
	self emit: $).
	locationPathRootVariable := oldLocationPathRootVariable.
	^ aRelativeLocationPath.