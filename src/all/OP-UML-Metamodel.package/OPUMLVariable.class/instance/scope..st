accessing
scope: aStructuredActivityNode
	"A StructuredActivityNode that owns the Variable."
	scope := OPUMLToOneLink
		on: self identity
		update: #variables
		from: scope
		to: aStructuredActivityNode