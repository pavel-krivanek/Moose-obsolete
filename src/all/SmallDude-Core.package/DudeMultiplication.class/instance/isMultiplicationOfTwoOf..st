testing
isMultiplicationOfTwoOf: aGroup 
	 
	| count | 
	count := 0. 
	self multiplyingEntities 
		do: [:each | (aGroup includes: each) ifTrue: [count := count + 1]]. 
	^count > 1