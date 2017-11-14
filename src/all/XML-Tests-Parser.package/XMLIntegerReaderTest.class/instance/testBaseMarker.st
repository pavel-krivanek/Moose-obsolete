tests
testBaseMarker
	2 to: self maxBase do: [:base | | stream defaultBase |
		defaultBase := (base - 1) max: 2.
		stream := self newStreamOn: ((base printStringBase: base) copyWithFirst: $#).
		self
			assert:
				(XMLIntegerReader
					readFrom: stream
					withBase: base
					andPrefixes: '@#$'
					orBase: defaultBase) = base;
			assert: stream atEnd.

		stream := self newStreamOn: (base printStringBase: defaultBase).
		self
			assert:
				(XMLIntegerReader
					readFrom: stream
					withBase: base
					andPrefixes: '@#$'
					orBase: defaultBase) = base;
			assert: stream atEnd]