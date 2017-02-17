handling - declaration
parameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	super
		parameterEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.

	self interruptOn = #parameterEntityDeclaration:publicID:systemID:
		ifTrue: [self interruptParsing].