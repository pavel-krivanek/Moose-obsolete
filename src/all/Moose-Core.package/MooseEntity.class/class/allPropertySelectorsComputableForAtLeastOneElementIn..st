meta accessing
allPropertySelectorsComputableForAtLeastOneElementIn: aMooseModel 

	"return a list of selectors not returning nil when applied on one random element of this kind in aMooseModel. Do not check all entities of the model, so is faster than allPropertySelectorsComputableIn:"
	|result entity|
	result := OrderedCollection new.
	entity := aMooseModel entities detect: [:anEntity |
		"we first look for entities exactly matching this type"
		(anEntity class = self)
		] ifNone: [
		"if we do not find, we should look for subclassing matching"
		aMooseModel detect: [:anEntity |
			self subclasses includes: anEntity class
			] ifNone: [^ #()]
		].
	self allPropertySelectors  do: [:aSelector |
		(entity perform: aSelector) ifNotNil: [result add: aSelector].
		].
	^ result
		
