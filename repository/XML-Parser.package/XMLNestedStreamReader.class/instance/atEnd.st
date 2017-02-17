testing
atEnd
	peekChar == nil
		ifFalse: [^ false].
	stream atEnd
		ifFalse: [^ false].
	"to:do: for speed"
	1 to: nestedStreams size do: [:i |
		(nestedStreams at: i) stream atEnd
			ifFalse: [^ false]].
	^ true.