co-change
dispersedLogic
	
	^self
		coChangePatternsUsing:
			[:eachHistory | 
			(eachHistory
				select:
					[:each | 
					each evolutionOfCyclomaticComplexity isZero
						and: [each evolutionOfNumberOfStatements > 0]])
				collect: [:each | each referenceVersion]]