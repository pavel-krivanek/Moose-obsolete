handling - dtd
handleParameterEntityDeclaration: aName replacement: aReplacement
	super
		handleParameterEntityDeclaration: aName
		replacement: aReplacement.

	self saxHandler
		parameterEntityDeclaration: aName
		replacement: aReplacement.