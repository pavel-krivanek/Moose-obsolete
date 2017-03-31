math functions
lg: x
	"logarithm"
	^ (positive 
		ifTrue: [ (x < 0 ifTrue: [ 0 ] ifFalse: [ x ]) ln ]
		ifFalse: [ (x > 0 ifTrue: [ 0 ] ifFalse: [ 0 - x ] ) ln negated ])
		/ (base ln).