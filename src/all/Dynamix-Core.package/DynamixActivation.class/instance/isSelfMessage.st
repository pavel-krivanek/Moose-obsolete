testing
isSelfMessage
	"Test whether the current receiver reference is the same as the one which sent the message"

	^self sender = self receiver