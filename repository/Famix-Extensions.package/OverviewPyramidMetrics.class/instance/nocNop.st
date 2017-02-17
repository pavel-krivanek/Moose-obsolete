accessing - metrics ratio
nocNop
	"High-level Structuring (NOC/Package). Indicates if packages tend to be coarse grained or fine grained"
	
	^ self nop isZero 
		ifTrue: [ -1 ]
		ifFalse: [ self truncatedFloatForFraction: (self noc / self nop) ]