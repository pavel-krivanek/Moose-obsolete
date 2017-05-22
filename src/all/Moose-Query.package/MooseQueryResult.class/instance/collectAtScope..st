scoping
collectAtScope: aScopeSymbol
	| basicResult noNilResult | 
	self deprecated: 'Use #atScope: aClass instead' on: '19/05/2016' in: 'Moose6.1'.
	basicResult := self primCollectAtScope: aScopeSymbol.
	"we can get nil in results when the wanted scope does not make
	sense for an entity. So, we reject the nils"
	noNilResult := basicResult reject: [:each | each isNil].
	^ self newObjectResultWith: (noNilResult asSet)