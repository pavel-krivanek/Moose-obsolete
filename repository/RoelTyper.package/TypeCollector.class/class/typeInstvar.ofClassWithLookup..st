instance creation
typeInstvar: var ofClassWithLookup: aClass 
	"self typeInstvar: #origin ofClassWithLookup: Quadrangle"
	| theClass |
	theClass := aClass.
	[theClass isNil not
		and: [theClass instVarNames includes: var]]
		whileFalse: [theClass := theClass superclass].
	theClass isNil
		ifTrue: [^ ExtractedType new].
	^ self typeInstvar: var ofClass: theClass