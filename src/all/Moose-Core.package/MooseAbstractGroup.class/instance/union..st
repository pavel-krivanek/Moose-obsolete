set operations
union: aGroup 

	self subclassResponsibility

	"| result | 
	result := MooseGroup withAll: (self entities asSet union: aGroup entities asSet). 
	result description: self description , '  and ' , aGroup description. 
	^result"