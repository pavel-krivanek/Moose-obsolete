filtering
toScope: aClassFamix
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) toScope: aClassFamix in: res ].
	^ self newObjectResultWith: res asSet