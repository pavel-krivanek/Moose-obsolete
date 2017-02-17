testing
ifEmpty: emptyBlock ifNotEmpty: notEmptyBlock
	self isEmpty
		ifTrue: [ ^ emptyBlock value ].
	^ notEmptyBlock cull: self