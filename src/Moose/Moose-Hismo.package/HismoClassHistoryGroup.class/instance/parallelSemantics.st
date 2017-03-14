cochange
parallelSemantics
	
	^self
		coChangePatternsUsing:
			[:eachHistory | 
			(eachHistory select: [:each | each additionOfNumberOfMethods > 0])
				collect: [:each | each referenceVersion]]