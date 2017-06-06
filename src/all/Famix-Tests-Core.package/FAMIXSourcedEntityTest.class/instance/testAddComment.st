tests
testAddComment
	| inst comment |
	inst := self actualClass new.
	comment := FAMIXComment content: 'This is a test'.
	inst addComment: comment.
	self assert: inst comments size equals: 1.
	self assert: inst comments anyOne equals: comment.
	self assert: comment container equals: inst