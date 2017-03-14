expressions
Primitive
	"Matches primitive value (returns boolean)."
	| p |
	p := self String.
	nil ~~ p ifTrue: 
		[ client primitive: p.
		^ true ].
	p := self Number.
	nil ~~ p ifTrue: 
		[ client primitive: p.
		^ true ].
	self tTRUE ifTrue: 
		[ client primitive: true.
		^ true ].
	self tFALSE ifTrue: 
		[ client primitive: false.
		^ true ].
	^ false