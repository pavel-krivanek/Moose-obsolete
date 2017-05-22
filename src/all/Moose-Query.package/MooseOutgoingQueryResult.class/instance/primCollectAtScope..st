scoping
primCollectAtScope: aScopeSymbol
	"We do not use collect because we want to explicitly eliminate nils."

	| result opposite |
	
	self deprecated: 'This method is part of the old query system. Now instead of #collectAtScope: aSymbol you should use #atScope: aClass.' on: '19/05/2016' in: 'Moose6.1'.
	result := self species new.
	
	self storage 
		do: [ :dep |
			opposite := self opposite: dep.
			opposite notNil ifTrue: [ 
				result add: (opposite perform: aScopeSymbol) ] ].
	^ result