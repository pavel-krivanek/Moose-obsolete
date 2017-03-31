private
upToCommentEnd: context
	[ context atEnd or: [ | peekTwice |
		peekTwice := self peekTwice: context. 
		peekTwice first = $* and: [ peekTwice second = $/ ] ] 
	] whileFalse: [ context next ].
	context next.
	context next.
