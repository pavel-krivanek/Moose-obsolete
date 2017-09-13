accessing
ontoUmlDecoratorFor: aProperty
	| stereoNames markers |
	stereoNames := aProperty association appliedStereotypes collect: #name.
	markers := {#subQuantityOf -> (OPUmlEdgeMarkers filledDiamondWith: 'Q').
	#subCollectionOf -> (OPUmlEdgeMarkers filledDiamondWith: 'C').
	#memberOf -> (OPUmlEdgeMarkers emptyDiamondWith: 'M').
	#componentOf -> (OPUmlEdgeMarkers emptyDiamondWith: 'C')} asDictionary.
	aProperty opposite aggregation = OPUMLAggregationKind composite
		ifTrue: [ (stereoNames includes: #subQuantityOf)
				ifTrue: [ ^ markers at: #subQuantityOf ].
			(stereoNames includes: #subCollectionOf)
				ifTrue: [ ^ markers at: #subCollectionOf ] ].
	aProperty opposite aggregation = OPUMLAggregationKind shared
		ifTrue: [ (stereoNames includes: #memberOf)
				ifTrue: [ ^ markers at: #memberOf ].
			(stereoNames includes: #componentOf)
				ifTrue: [ ^ markers at: #componentOf ] ].
	^ nil