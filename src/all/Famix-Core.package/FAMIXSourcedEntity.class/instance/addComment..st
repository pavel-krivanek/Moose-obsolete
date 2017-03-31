accessing
addComment: aComment
	aComment isString 
		ifTrue: [ ^ self comments add: (FAMIXComment new content: aComment)].

	self assert: [ aComment isKindOf: FAMIXComment ].
	self comments add: aComment