accessing
aggregation
	"Specifies the kind of aggregation that applies to the Property."
	^ aggregation ifNil: [ aggregation := OPUMLAggregationKind new none ]