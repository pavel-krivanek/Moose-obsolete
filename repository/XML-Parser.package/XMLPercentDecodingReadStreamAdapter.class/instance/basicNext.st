private
basicNext
	| byteValue |

	(stream atEnd not
		and: [stream peek == $%])
		ifFalse: [^ nil].
	stream next.

	byteValue :=
		XMLIntegerReader
			readFrom: stream
			withBase: 16
			upTo: 2.
	^ (byteValue ifNil: [$%]) asCharacter.