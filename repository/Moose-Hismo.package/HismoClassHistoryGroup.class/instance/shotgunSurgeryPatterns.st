cochange
shotgunSurgeryPatterns
	
	^self
		coChangePatternsUsing:
			[:eachHistory | 
			(eachHistory
				select:
					[:each | 
					each evolutionOfNumberOfMethods isZero
						and: [each evolutionOfNumberOfStatements > 0]])
				collect: [:each | each referenceVersion]]