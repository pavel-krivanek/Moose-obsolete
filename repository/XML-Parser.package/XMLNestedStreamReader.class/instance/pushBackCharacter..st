positioning
pushBackCharacter: aCharacter
	self
		pushBackStream: (XMLSingleCharacterReadStream on: aCharacter)
		whenPoppedDo: nil
		isExternal: false