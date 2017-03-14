testing
isBetween: aGroup 
	 
	^self multiplyingEntities allSatisfy: [:each | aGroup includes: each]