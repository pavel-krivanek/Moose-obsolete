private - backend access
pvtAsMetaclassTrait

	| newMetaclassTrait |
	
	(self owner resolvedProperties includesAnyOf: #(superclass traitComposition))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	newMetaclassTrait := RGMetaclassTrait unresolvedWithParent: self owner parent.
	newMetaclassTrait copyPropertiesFrom: self owner.

	(self owner hasResolvedName)
		ifTrue: [ newMetaclassTrait pvtName: ((self owner name withoutSuffix: ' class'), ' classTrait') asSymbol ].
	newMetaclassTrait pvtLocalMethods: self owner localMethods.
	
	^ newMetaclassTrait
	
	