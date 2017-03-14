set operations
union: aGroup 
	 
	| result | 
	result := MooseGroup withAll: (self entities asSet union: aGroup entities asSet). 
	result description: self description , '  and ' , aGroup description. 
	^result