accessing class hierarchy
subclasses

	| result |
	result := IdentitySet new.
	self environment behaviorsDo: [ :each |
		(each superclass == self) ifTrue: [ result add: each] ].
	^ result asArray