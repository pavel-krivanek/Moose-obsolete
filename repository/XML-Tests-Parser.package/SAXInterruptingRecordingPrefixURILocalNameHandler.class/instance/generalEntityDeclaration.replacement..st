handling - declaration
generalEntityDeclaration: aName replacement: aReplacement
	super
		generalEntityDeclaration: aName
		replacement: aReplacement.

	self interruptOn = #generalEntityDeclaration:replacement:
		ifTrue: [self interruptParsing].