instance creation
withModels: aCollection
	
	| result |
	result := self new.
	aCollection do: [:each | result addLastVersionForMooseModel: each].
	^result