visiting
visitNode: aNode 
	"	aNode comments do: [ :comment | 
		comment halt ]." 
	 
	^aNode acceptVisitor: self