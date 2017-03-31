running
allTerms

	| bag |	
	bag := MalTerms new.
	[self atEnd] whileFalse: [bag add: self next].
	^bag