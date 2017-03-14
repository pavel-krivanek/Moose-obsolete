removing
stemAll
	
	| newTerms |
	newTerms := MalTerms new: contents capacity.
	self
		withCountDo:
			[:term :count | 
			newTerms
				add: (MalStemmer stem: term) 
				withOccurrences: count].
	self become: newTerms