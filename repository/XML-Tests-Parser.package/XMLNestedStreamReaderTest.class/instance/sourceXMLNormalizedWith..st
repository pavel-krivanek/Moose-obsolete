source
sourceXMLNormalizedWith: aCharacter
	^ self sourceXMLTemplate format:
		(Array
			with: aCharacter
			with: aCharacter
			with: aCharacter)