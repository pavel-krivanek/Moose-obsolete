accessing
runWith: aCompiledMethod and: anEntity 
	| parseTree |
	self initializeForMethod: anEntity inClass: aCompiledMethod methodClass.

	parseTree := theClass parseTreeFor: aCompiledMethod selector.
	parseTree ifNotNil: [ self visitMethodNode: parseTree	"sourceCodeAt:" ]