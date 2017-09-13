operations
isComposite
	"The value of isComposite is true only if aggregation is composite."
	
	"{OCL} result = (aggregation = AggregationKind::composite)"
	
	^ self aggregation = OPUMLAggregationKind composite
