source
sourceXMLNormalizedWith: aCharacter
	^ self sourceXMLTemplate format:
		(Array
			with: aCharacter
			with: aCharacter
			with: (String withAll: self nonLineEndingSeparators)
			with: aCharacter)