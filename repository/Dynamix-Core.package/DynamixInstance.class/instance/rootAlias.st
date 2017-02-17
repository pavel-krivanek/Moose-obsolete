accessing-aliases
rootAlias
	self aliases isEmpty ifTrue: [ ^nil ].
	^ self aliases detect: [ :each | each ancestor isNil ].