accessing-dynamic
afterArguments
	self after ifNil: [ ^ #() ].
	^ self after arguments