queries - methods
methods

	| methodsFromTraits methodsDict |
	"TODO: make nicer"
	"^ self propertyNamed: #methods ifAbsentPut: [ "
	methodsFromTraits := self traitComposition methods collect:  [ :each | each copy parent: self ].
	methodsDict := Dictionary new.
	methodsFromTraits do: [ :each |
		methodsDict at: each name put: each ].
	self localMethodsDo: [ :each |
		methodsDict at: each name put: each ].
	^ methodsDict values asArray"]"
