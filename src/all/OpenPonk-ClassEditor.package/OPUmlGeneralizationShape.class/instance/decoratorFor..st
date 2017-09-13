accessing
decoratorFor: aProperty
	aProperty opposite aggregation = OPUMLAggregationKind composite
		ifTrue: [ ^ OPUmlEdgeMarkers filledDiamond ].
	aProperty opposite aggregation = OPUMLAggregationKind shared
		ifTrue: [ ^ OPUmlEdgeMarkers emptyDiamond ].
	aProperty isNavigable & aProperty opposite isNavigable
		ifTrue: [ ^ OPUmlEdgeMarkers none ].
	aProperty isNavigable & aProperty opposite isNavigable not
		ifTrue: [ ^ OPUmlEdgeMarkers simpleArrow ].
	^ OPUmlEdgeMarkers none