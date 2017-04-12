filtering
withScope: aClassFamix
	| basicResult noNilResult |
	basicResult := self storage
		collect: [ :dep |
			| opposite |
			opposite := self opposite: dep.
			opposite isCollection
				ifTrue: [ opposite collect: [ :each | each withScope: aClassFamix ] ]
				ifFalse: [ opposite ifNotNil: [ opposite withScope: aClassFamix ] ] ].	
	"we can get nil in results when the wanted scope does not make
	sense for an entity, or when the opposite is not available.
	So, we reject the nils"
	noNilResult := (basicResult reject: [ :each | each isNil ]) flattened.
	^ self newObjectResultWith: noNilResult asSet