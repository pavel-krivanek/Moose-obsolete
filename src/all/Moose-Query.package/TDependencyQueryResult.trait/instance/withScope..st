filtering
withScope: aClassFamix
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) withScope: aClassFamix in: res ].
	^ self newObjectResultWith: res asSet