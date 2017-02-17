*Famix-Smalltalk
extensionMethods
	"select all class extensions made by this package"

	^ self privateState 
		cacheAt: #extensionMethods 
		ifAbsentPut: [ childNamedEntities select: [ :child | child isMethod ]]