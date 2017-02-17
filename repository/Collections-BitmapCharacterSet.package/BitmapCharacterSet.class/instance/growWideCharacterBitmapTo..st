private
growWideCharacterBitmapTo: aSizeInBytes
	| newSize |

	newSize := aSizeInBytes min: self maxWideCharactersSize.
	wideCharacters
		ifNil: [wideCharacters := ByteArray new: newSize]
		ifNotNil: [
			wideCharacters :=
				(ByteArray new: newSize)
					replaceFrom: 1
					to: wideCharacters size
					with: wideCharacters
					startingAt: 1].