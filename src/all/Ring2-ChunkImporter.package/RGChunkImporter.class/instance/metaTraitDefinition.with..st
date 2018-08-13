private
metaTraitDefinition: string with: chgRec
	| tokens trait |
	
	tokens := self scannedSource: string.
	trait := environment ensureTraitNamed: tokens first.
	
"	trait theMetaClass definitionSource: string"