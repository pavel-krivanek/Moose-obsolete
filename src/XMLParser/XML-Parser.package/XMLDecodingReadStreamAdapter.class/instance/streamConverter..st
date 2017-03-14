accessing
streamConverter: aStreamConverter
	streamConverter :=
		aStreamConverter ifNil: [XMLStreamConverter null].
	peekChar
		ifNotNil: [
			stream position: prePeekStreamPosition.
			prePeekStreamPosition := nil.
			peekChar := nil].