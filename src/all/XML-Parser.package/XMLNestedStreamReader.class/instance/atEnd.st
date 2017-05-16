testing
atEnd
	peekChar
		ifNotNil: [^ false].
	stream atEnd
		ifFalse: [^ false].
	"use #to:do: for speed"
	1 to: nestedStreams size do: [:i |
		(nestedStreams at: i) stream atEnd
			ifFalse: [^ false]].
	^ true.