private
write: aString escapedWith: anEscapeTable
	self isEscaping
		ifTrue: [| tableSize |
			tableSize := anEscapeTable size.
			"to:do: for performance"
			1 to: aString size do: [:i | | nextChar asciiValue |
				((asciiValue := (nextChar := aString at: i) asciiValue) > 0
					and: [asciiValue <= tableSize
						and: [(anEscapeTable at: asciiValue) notNil]])
					ifTrue: [| replacement |
						(replacement := anEscapeTable at: asciiValue) == #LineBreak
							ifTrue: [stream nextPutAll: self lineBreak]
							ifFalse: [
								self formatBeforeCharacterEscape: replacement.
								stream nextPutAll: replacement.
								self formatAfterCharacterEscape: replacement]]
					ifFalse: [stream nextPut: nextChar]]]
		ifFalse: [stream nextPutAll: aString]