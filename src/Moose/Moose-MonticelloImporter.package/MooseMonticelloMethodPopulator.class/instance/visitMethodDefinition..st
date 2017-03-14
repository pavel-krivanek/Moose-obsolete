visiting
visitMethodDefinition: definition 
	| famixMethod classOnWhichItIsDefined |
	famixMethod := FAMIXMethod new.
	famixMethod name: definition selector.
	famixMethod signature: definition selector.
	famixMethod hasClassScope: definition classIsMeta.
	"note that maybe the class does not exist yet, this happens if the method is an extension"
	classOnWhichItIsDefined := importer ensureClassNamed: definition className.
	classOnWhichItIsDefined addMethod: famixMethod.
	famixMethod parentType: classOnWhichItIsDefined.
	famixMethod category: definition category asSymbol.
	famixMethod isPublic: true.
	famixMethod sourceAnchor: (FAMIXSourceTextAnchor new source: definition source).
	famixMethod 
		propertyNamed: #timestamp
		put: definition timeStamp.
	importer targetModel add: famixMethod.
	self 
		setInfoOn: famixMethod
		withSource: definition source.
	^ famixMethod