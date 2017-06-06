tests
testAddingComment
	| cls |
	cls := FAMIXClass new.
	cls name: 'AClass'.
	self assert: cls mooseName == #AClass.
	self assert: cls comments isEmpty.
	cls addComment: 'This is a comment'.
	self assert: (cls comments allSatisfy: [ :c | c isKindOf: FAMIXComment ]).
	self assert: (cls comments at: 1) content equals: 'This is a comment'