handling - declaration
parameterEntityDeclaration: aName replacement: aReplacement
	super
		parameterEntityDeclaration: aName
		replacement: aReplacement.

	self interruptOn = #parameterEntityDeclaration:replacement:
		ifTrue: [self interruptParsing].