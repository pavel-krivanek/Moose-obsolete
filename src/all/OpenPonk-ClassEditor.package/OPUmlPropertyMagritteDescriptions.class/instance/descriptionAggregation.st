descriptions
descriptionAggregation
	<magritteDescription>
	^ MASingleOptionDescription new
		optionsAndLabels:
			{OPUMLAggregationKind none -> 'none'.
			OPUMLAggregationKind shared -> 'shared'.
			OPUMLAggregationKind composite -> 'composite'};
		reference: MAStringDescription new;
		accessor: (self descriptionAccessor: #aggregation);
		label: 'Aggregation';
		priority: 3;
		beSorted;
		yourself