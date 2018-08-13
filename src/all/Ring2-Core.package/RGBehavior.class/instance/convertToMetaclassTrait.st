conversion
convertToMetaclassTrait

	| metaclassTraitStrategy originalName |
	
	(self resolvedProperties includesAnyOf: #(traitComposition))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
"	newMetaclassTrait := RGMetaclassTrait unresolvedWithParent: self parent.
	newMetaclassTrait copyPropertiesFrom: self.
"
	metaclassTraitStrategy := RGTrait newStrategyFor: self environment.
	metaclassTraitStrategy owner: self.

	originalName := self name.
	
	(self hasResolvedName)
		ifTrue: [ self pvtName: ((self name withoutSuffix: ' class'), ' classTrait') asSymbol ].
		
	self environment ask replaceName: originalName with: self name.

	
	
	