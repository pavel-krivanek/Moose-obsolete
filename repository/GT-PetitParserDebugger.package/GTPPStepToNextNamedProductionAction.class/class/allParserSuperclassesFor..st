private
allParserSuperclassesFor: aClass
	|  allSuperclasses  |

	allSuperclasses := aClass withAllSuperclasses.
	"Return 2 in the ifAbsent: block so that if PPCompositeParser is not a superclass only the current class is returned"
	^ allSuperclasses copyFrom: 1 to: (allSuperclasses indexOf: PPCompositeParser ifAbsent: [ 2 ]) - 1
		