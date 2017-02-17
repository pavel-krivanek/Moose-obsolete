converting
normalized
	
	| newTerms sum length |
	newTerms := MalTerms new: contents size.
	sum := 0.
	contents do: [:count | sum := sum + (count * count)].
	length := sum sqrt.
	self withCountDo: [:each :count | 
		newTerms add: each withOccurrences: count asFloat / length].
	^newTerms