set operations
difference: aGroup 
	 
	| result | 
	result := self class withAll: (self entities difference: aGroup entities). 
	result description: self description , '  subtracted with ' , aGroup description. 
	^result