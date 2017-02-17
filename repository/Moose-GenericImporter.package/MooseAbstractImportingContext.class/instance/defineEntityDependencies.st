initialize-release
defineEntityDependencies

	| dependenciesElements dependenciesTypes  |
	"we iterate over all elements (FM3MetaDescriptions) of the metamodel"
	meta  do: [:element | 
		"we just keep classes that are not abstract (an abstract class will never be instanciated and therefore will never be a Moose Element)."
		((element isFM3Class ) and: [(self hasSubclasses: element) not]) 
			ifTrue:[
				fm3Elements add: element.
				"we retrieve all attributes of this class"
				dependenciesElements := (element allAttributes select: [:each | 
					each isDerived not 
					and: [( #(#String #Number #Boolean #Object  ) includes: each type name) not]]
		).
		
		dependenciesTypes := OrderedCollection new.
		dependenciesElements  do: [:each | 
				dependenciesTypes addAll: (self allSubclassTypesNotAbstractFor: each).
				"( #(#String #Number #Boolean #Object  ) includes: each  type superclass  name) 
					ifFalse: [ dependenciesTypes add: each type superclass name. ]"
		].
	
		entityDependencies at: element name put: dependenciesTypes asSet asOrderedCollection  .
		]
	]