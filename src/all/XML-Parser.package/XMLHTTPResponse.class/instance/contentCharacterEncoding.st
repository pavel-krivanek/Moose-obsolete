accessing
contentCharacterEncoding
	"Returns the response content character encoding name as a string"

	| encoding |

	^ (encoding := self class charsetFromContentType: self contentType) isEmpty
		ifTrue: [self defaultContentCharacterEncoding]
		ifFalse: [encoding]