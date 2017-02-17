testing
escapesContentEntityReferences
	^ self isEscaping
		and: [(contentEscapes at: $& asciiValue) notNil
			and: [(contentStringEscapes at: $& asciiValue) notNil]]