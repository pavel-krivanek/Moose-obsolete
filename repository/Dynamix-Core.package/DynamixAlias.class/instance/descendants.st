accessing-derived
descendants
	descendants ifNil: [
		descendants := OrderedCollection new
		"descendants := self subject aliases select: [ :each | each ancestor == self ]" ].
	descendants asSet size = descendants size ifFalse: [ self error: 'Sanity check: how is this possible?!' ].
	^ descendants