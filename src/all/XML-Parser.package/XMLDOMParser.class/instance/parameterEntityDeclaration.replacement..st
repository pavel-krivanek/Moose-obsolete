handling - declaration
parameterEntityDeclaration: aName replacement: aReplacement
	self topNode addNode:
		(self nodeFactory parameterEntityDeclarationClass
			name: aName
			replacement: aReplacement)