filtering
toScope: aClassFamix
	| basicResult noNilResult |
	basicResult := self storage collect: [ :dep | (self opposite: dep) ifNotNil: [ :r | r asCollection collect: [ :each | each toScope: aClassFamix ] ] ].
	"we can get nil in results when the wanted scope does not make
	sense for an entity. So, we reject the nils"
	noNilResult := (basicResult reject: #isNil) flattened.
	^ self newObjectResultWith: noNilResult asSet