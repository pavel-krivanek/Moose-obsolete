private
traitDefinition: aString with: chgRec

	| tokens trait |
	tokens := self scannedSource: aString.
	trait := environment ensureTraitNamed: tokens third.
	"trait superclassName: tokens first;
			 definitionSource: aString;"
	trait category: tokens last