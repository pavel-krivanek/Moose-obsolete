handling - dtd
handleGeneralEntityDeclaration: aName replacement: aReplacement
	super
		handleGeneralEntityDeclaration: aName
		replacement: aReplacement.

	self saxHandler
		generalEntityDeclaration: aName
		replacement: aReplacement.