adding
addTerms: aTerms
	
	aTerms withCountDo: [:each :count | self add: each withOccurrences: count]