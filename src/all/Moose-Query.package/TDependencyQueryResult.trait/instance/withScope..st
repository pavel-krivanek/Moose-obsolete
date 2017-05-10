filtering
withScope: aClassFamix
	| basicResult noNilResult |
	basicResult := self storage collect: [ :dep | (self opposite: dep) ifNotNil: [ :r | r asCollection collect: [ :each | each withScope: aClassFamix ] ] ].
	"we can get nil in results when the wanted scope does not make
	sense for an entity, or when the opposite is not available.
	So, we reject the nils"
	noNilResult := (basicResult reject: #isNil) flattened.
	^ self newObjectResultWith: noNilResult asSet