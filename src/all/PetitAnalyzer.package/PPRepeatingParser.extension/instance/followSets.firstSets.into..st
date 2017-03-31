*petitanalyzer-private
followSets: aFollowDictionary firstSets: aFirstDictionary into: aSet
	| firstSet |
	super followSets: aFollowDictionary firstSets:  aFirstDictionary into: aSet.
	
	firstSet := aFirstDictionary at: self.
	self children do: [:p | (aFollowDictionary at: p) addAll: (firstSet reject: [:each | each isNullable]) ]