scoping
primCollectAtScope: aScopeSymbol
	"We do not use collect because we want to explicitly eliminate nils."

	| result opposite |
	result := self species new.
	
	self storage 
		do: [ :dep |
			opposite := self opposite: dep.
			opposite notNil ifTrue: [ 
				result add: (opposite perform: aScopeSymbol) ] ].
	^ result