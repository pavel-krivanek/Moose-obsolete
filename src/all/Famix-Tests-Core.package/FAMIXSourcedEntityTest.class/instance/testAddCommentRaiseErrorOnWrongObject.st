tests
testAddCommentRaiseErrorOnWrongObject
	self should: [ self actualClass new addComment: FAMIXSourceAnchor new ] raise: Error