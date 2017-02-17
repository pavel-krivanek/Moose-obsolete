enumerating
select: aBlock as: aCollectionClass
	| newCollection |
	newCollection := aCollectionClass new.
	self do: [ :each |
		(aBlock value: each) ifTrue: [ 
			newCollection add: each ] ].
	^ newCollection