tests
testAddCommentFromString
	| inst |
	inst := self actualClass new.
	inst addComment: 'This is a test'.
	self assert: inst comments size equals: 1.
	self assert: inst comments anyOne content equals: 'This is a test'