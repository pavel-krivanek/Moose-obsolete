private
metaClassDefinition: string with: chgRec
	| tokens theClass |
	
	tokens := self scannedSource: string.
	
	theClass := self classNamed: tokens first.
	theClass theMetaClass instanceVariables: (tokens fourth findTokens: ' ')