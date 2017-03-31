accessing
nextMatchAll: aString
	| oldPosition |

	(stream atEnd not
		and: [stream peek = (aString at: 1)])
		ifFalse: [^ false].

	oldPosition := stream position.
	stream next.
	2 to: aString size do: [:i |
		(stream atEnd not
			and: [stream next = (aString at: i)])
			ifFalse: [
				stream position: oldPosition.
				^ false]].
	^ true.