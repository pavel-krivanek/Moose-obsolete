enumerating
count: aBlock 
	 
	| count | 
	count := 0. 
	self do: [:each | (aBlock value: each) ifTrue: [count := count + 1]]. 
	^count