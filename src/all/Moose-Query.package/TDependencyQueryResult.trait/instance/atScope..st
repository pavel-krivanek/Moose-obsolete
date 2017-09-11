filtering
atScope: aClassFamix
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) atScope: aClassFamix in: res ].
	^ self newObjectResultWith: res asSet