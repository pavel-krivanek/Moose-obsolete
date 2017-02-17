properties
evolutionOfNumberOfAttributes
	<MSEProperty: #evolutionOfNumberOfAttributes type: #Number>
	<MSEComment: 'The sum of the number of attribute added or removed in subsequent versions'>

	^self
		lookUpPropertyNamed: #evolutionOfNumberOfAttributes
		computedAs: [self evolutionOfPropertyNamed: #numberOfAttributes]