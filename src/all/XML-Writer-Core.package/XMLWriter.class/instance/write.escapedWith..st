private
write: aString escapedWith: anEscapeTable
	| tableSize |

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
						formatter
							ifNil: [stream nextPutAll: replacement]
							ifNotNil: [
								formatter formatBeforeCharacterEscape:
									replacement.
								stream nextPutAll: replacement.
								formatter formatAfterCharacterEscape:
									replacement]]]
			ifFalse: [stream nextPut: nextChar]].