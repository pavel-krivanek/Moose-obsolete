co-change
parallelComplexity
	
	^self
		coChangePatternsUsing:
			[:eachHistory | 
			(eachHistory select: [:each | each additionOfCyclomaticComplexity > 0])
				collect: [:each | each referenceVersion]]