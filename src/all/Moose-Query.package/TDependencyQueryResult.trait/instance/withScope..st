filtering
withScope: aClassFamix
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) ifNotNil: [ :r | r asCollection do: [ :each | res addAll: (each withScope: aClassFamix) ] ] ].
	^ self newObjectResultWith: res asSet