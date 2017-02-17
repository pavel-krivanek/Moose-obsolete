accessing
reservedCharacters
	reservedCharacters
		ifNil: [
			reservedCharacters :=
				String streamContents: [:stream |
					self asciiCharacters do: [:each |
						(self unreservedCharacters includes: each)
							ifFalse: [stream nextPut: each]]]].
	^ reservedCharacters.