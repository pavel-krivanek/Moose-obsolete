removing
removeRareTerms: occurrence
	
	| newTerms |
	newTerms := MalTerms new: contents capacity.
	self withCountDo: [:term :count | 
		count > occurrence
			ifTrue: [newTerms add: (MalStemmer stem: term) withOccurrences: count]].
	self become: newTerms