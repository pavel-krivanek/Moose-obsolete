*Famix-Smalltalk
extendedClasses
	"select all classes extended in this package"

	^ self privateState cacheAt: #extendedClasses
							ifAbsentPut: [ self classes select: [ :c| c isExtended ] ]
	