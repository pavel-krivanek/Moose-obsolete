accessing
propertyValuesMap: aDictionary

	|result|
	result := Dictionary new.
	elementsAndPropertyValue keysAndValuesDo: [:element :propertyValue |
		aDictionary keysAndValuesDo: [:key :value |
			(value rtValue: propertyValue) ifTrue: [result at: element put: key]. 
		].
		"a property value may not be between the bounds defined by the user. In this case, we set a default value"
		(result keys includes: element) ifFalse: [result at: element put: #notBetweenBounds].
	].
	self properties: aDictionary keys asArray.
	elementsAndPropertyValue := result.

	 
