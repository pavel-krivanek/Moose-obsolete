adding
addSimpleDocument: aSimpleDocument
	
	| terms |
	terms := MalTerms new.
	aSimpleDocument termBag
		valuesAndCountsDo:
			[:value :count | terms add: value withOccurrences: count].
	self addDocument: aSimpleDocument with: terms