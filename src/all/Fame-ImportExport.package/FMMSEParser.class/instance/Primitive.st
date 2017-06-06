expressions
Primitive
	"Matches primitive value (returns boolean)."

	| p |
	p := self String.
	p ifNotNil: [ client primitive: p. ^ true ].
	p := self Number.
	p ifNotNil: [ client primitive: p. ^ true ].
	self tTRUE ifTrue: [ client primitive: true. ^ true ].
	self tFALSE ifTrue: [ client primitive: false. ^ true ].
	^ false