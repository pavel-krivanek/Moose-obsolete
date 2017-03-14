scoping
collectAtScope: aScopeSymbol
	| basicResult noNilResult | 
	basicResult := self primCollectAtScope: aScopeSymbol.
	"we can get nil in results when the wanted scope does not make
	sense for an entity. So, we reject the nils"
	noNilResult := basicResult reject: [:each | each isNil].
	^ self newObjectResultWith: (noNilResult asSet)