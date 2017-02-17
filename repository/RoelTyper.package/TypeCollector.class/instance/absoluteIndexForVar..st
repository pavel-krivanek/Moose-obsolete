accessing
absoluteIndexForVar: iVar
	"Note: works for Squeak and VisualWorks. If it would be only for VW, you could just use instVarIndexFor: instead."

	^instVars indexOf: iVar