tests
testBases
	2 to: self maxBase do: [:base | | stream |
		(0 to: base), (base + 1 to: base * 10 by: base) do: [:i |
			stream := (i printStringBase: base) readStream.
			self
				assert: (XMLIntegerReader readFrom: stream withBase: base) = i;
				assert: stream atEnd]].
	self
		should: [XMLIntegerReader readFrom: '1' readStream withBase: 1]
		raise: Error.
	self
		should: [XMLIntegerReader readFrom: '1' readStream withBase: self maxBase + 1]
		raise: Error.