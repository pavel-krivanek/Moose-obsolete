enumerating
collect: aBlock as: aCollectionClass
	| newCollection |
	newCollection := aCollectionClass new.
	self do: [ :each |
		newCollection add: (aBlock value: each) ].
	^ newCollection