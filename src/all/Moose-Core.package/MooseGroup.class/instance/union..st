set operations
union: aGroup 
	 
	| result | 
	result := self class withAll: (self entities asSet union: aGroup entities asSet). 
	result description: self description , '  and ' , aGroup description. 
	^result