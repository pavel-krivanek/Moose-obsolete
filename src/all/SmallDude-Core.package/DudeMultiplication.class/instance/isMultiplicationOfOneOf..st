testing
isMultiplicationOfOneOf: aGroup 
	 
	^self multiplyingEntities anySatisfy: [:each | aGroup includes: each]