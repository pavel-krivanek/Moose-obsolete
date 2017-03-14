parsing
parseOn: context
	| start |

	[ 
		| peekTwice |
		[ context atEnd not and: [ context peek isSeparator ] ]
			whileTrue: [ context next ].
		peekTwice := self peekTwice: context. 
		((peekTwice  first = $/) and: 	[ (peekTwice second = $*) or: [peekTwice second = $/]])
	] whileTrue: [
		context next.
		start := context position.
		(context next = $*) ifTrue: [ 
			self upToCommentEnd: context.
		] ifFalse: [ 
			self upToNewline: context.
		].
	].