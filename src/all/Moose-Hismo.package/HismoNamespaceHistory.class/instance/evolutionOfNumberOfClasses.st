properties
evolutionOfNumberOfClasses
	
"	<property: #ENOCls longName: 'Evolution of number of classes'
		description:
			'The sum of the number of classes added or removed in subsequent versions'>"

	<MSEProperty: #evolutionOfNumberOfClasses type: #Number>
	<MSEComment: 'The sum of the number of classes added or removed in subsequent versions'>

	^self
		lookUpPropertyNamed: #evolutionOfNumberOfClasses
		computedAs: [self evolutionOfPropertyNamed: #numberOfClasses]