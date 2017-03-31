private
upToNewline: context
	[ context atEnd or: [context peek = Character cr or: [ context peek = Character lf ] ] ] whileFalse: [ context next ].
	context next.
