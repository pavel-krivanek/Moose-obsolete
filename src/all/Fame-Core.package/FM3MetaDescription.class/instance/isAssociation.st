testing
isAssociation
	^ self allSuperclasses anySatisfy: [ :aSuperclass | aSuperclass name = #Association ]