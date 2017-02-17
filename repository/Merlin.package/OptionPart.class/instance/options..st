accessing
options: aCollection

	|tmpDictionary|
	tmpDictionary := IdentityDictionary new.
	options := (aCollection collect: [:each | each copy]).
	self options do: [:anObject |
		tmpDictionary at: anObject put: (MerlinOptionValueHolder new option: anObject; contents: true; addDependent: self; yourself)
		].
	self optionsAndModels: tmpDictionary