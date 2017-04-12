filtering
toScope: aClassFamix
	| basicResult noNilResult |
	basicResult := self storage collect: [ :entity | entity toScope: aClassFamix ].	
		
	"we can get nil in results when the wanted scope does not make
	sense for an entity. So, we reject the nils"
	noNilResult := (basicResult reject: [ :each | each isNil ]) flattened.
	^ self newObjectResultWith: noNilResult asSet