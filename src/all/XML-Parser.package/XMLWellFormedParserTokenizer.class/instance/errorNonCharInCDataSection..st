errors
errorNonCharInCDataSection: aCharacter
	self
		errorNonChar: aCharacter
		in: '<![CDATA[...]]> section'