parsing
parseComments: anArray on: context
	| start comments |
	comments := anArray.
	[ 
		| peekTwice |
		[ context atEnd not and: [ context peek isSeparator ] ]whileTrue: [ context next ].
		peekTwice := self peekTwice: context. 
		((peekTwice  first = $/) and: [ (peekTwice second = $*) or: [peekTwice second = $/]])] whileTrue: [
			context next.
			start := context position.
			(context next = $*) ifTrue: [ 
				self upToCommentEnd: context.
			] ifFalse: [ 
				| position |
				position := context position.
				self upToNewline: context.
			].
			comments := comments copyWith: (start to: context position) 
		].
		^ comments

	"Modified: / 21-04-2015 / 17:23:21 / Jan Vrany <jan.vrany@fit.cvut.cz>"