scoping
primCollectAtScope: aScopeSymbol
	"
	^ self opposites collectAtScope: aScopeSymbol
	"

	self deprecated: 'This method is part of the old query system. Now instead of #collectAtScope: aSymbol you should use #atScope: aClass.' on: '19/05/2016' in: 'Moose6.1'.
	^ self storage collect: [ :dep | (self opposite: dep) perform: aScopeSymbol ]