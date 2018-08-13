tests
testNewComment
	| comment time |
	
	comment := RGComment unnamed.
	
	self assert: (comment isRingResolved).
	self assert: (comment isComment).
	
	self assert: (comment hasUnresolvedAll: #(content author time name)).
	
	self assert: (comment isEmptyOrNil).
	
	self assert: comment content equals: ''.
	comment content: 'some class comment'.
	self assert: (comment hasUnresolvedAll: #(author time name)).
	self assert: comment content equals: 'some class comment'.
	self deny: (comment isEmptyOrNil).
	self assert: comment content equals: comment sourceCode.
	
	self assert: comment author equals: ''.
	comment author: 'FullAuthorName'.
	self assert: (comment hasUnresolvedAll: #(time name)).
	self assert: comment author equals: 'FullAuthorName'.
	
	time := DateAndTime now.
	self assert: comment time equals: DateAndTime new.
	comment time: time.
	self assert: (comment hasUnresolved: #name).
	self assert: comment time equals: time.
