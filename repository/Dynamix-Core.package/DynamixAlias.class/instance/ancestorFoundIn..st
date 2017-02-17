accessing-derived
ancestorFoundIn: aCollection
	self isRoot ifTrue: [ ^nil ].
	^ (aCollection includes: self ancestor)
		ifTrue: [ self ancestor ]
		ifFalse: [ self ancestor ancestorFoundIn: aCollection ]