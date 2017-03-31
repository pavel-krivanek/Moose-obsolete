handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	super
		handleParameterEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.

	self saxHandler
		parameterEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.