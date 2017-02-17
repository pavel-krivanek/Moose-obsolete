tests
testBaseMarker
	2 to: self maxBase do: [:base | | stream defaultBase |
		defaultBase := (base - 1) max: 2.
		stream := ((base printStringBase: base) copyWithFirst: $#) readStream.
		self
			assert:
				(XMLIntegerReader
					readFrom: stream
					withBase: base
					startingWithAny: '@#$'
					orBase: defaultBase) = base;
			assert: stream atEnd.

		stream := (base printStringBase: defaultBase) readStream.
		self
			assert:
				(XMLIntegerReader
					readFrom: stream
					withBase: base
					startingWithAny: '@#$'
					orBase: defaultBase) = base;
			assert: stream atEnd].