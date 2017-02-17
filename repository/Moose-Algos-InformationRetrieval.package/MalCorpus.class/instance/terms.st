accessing
terms
	
	| all |
	all := MalTerms new.
	documents do: [:each | all addAll: each].
	^all