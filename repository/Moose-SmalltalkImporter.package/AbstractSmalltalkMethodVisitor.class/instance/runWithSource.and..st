accessing
runWithSource: sourceAsString and: aFamixMethod
	| parseTree |
	self initializeForMethod: aFamixMethod inClass: aFamixMethod parentType.

	parseTree := self parseTreeForSource: sourceAsString. 
	parseTree ifNotNil: [self visitMethodNode: parseTree]	"sourceCodeAt:"