accessing
asciiCharacters
	asciiCharacters ifNil: [
		asciiCharacters :=
			String streamContents: [:stream |
				"0 is ignored for GS compatibility, because it uses it as a string
				terminator"
				1 to: 127 do: [:i |
					stream nextPut: i asCharacter]]].
	^ asciiCharacters.