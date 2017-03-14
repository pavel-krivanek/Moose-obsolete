co-change
parallelSemantics
	
	^self
		coChangePatternsUsing:
			[:eachHistory | 
			(eachHistory
				select:
					[:each | 
					each additionOfNumberOfMethods > 0
						and: [each evolutionOfNumberOfClasses isZero]])
				collect: [:each | each referenceVersion]]