meta information
allPropertySelectors
	"Return a dictionary with all properties of the entity, including metamodel properties, metrics, and navigation groups. Keys are abstract names of properties, values are implementing selectors"

	| props | 
	props := IdentityDictionary new.
	self allDeclaredProperties
		do: [ :prop | props at: prop name put: prop implementingSelector ].
	(Pragma allNamed: #navigation: from: self class to: MooseEntity)
		do: [ :p | props at: p methodSelector put: p methodSelector ].
	(Pragma
		allNamed: #property:longName:description:
		from: self class
		to: MooseEntity)
		do: [ :p | props at: (p argumentAt: 1) put: p selector ].
	
	^ props