tests
testReadLimit
	2 to: self maxBase do: [:base | | stream |
		"101 regardless of base"
		stream := (base * base + 1 printStringBase: base) readStream.
		self
			assert: (XMLIntegerReader readFrom: stream withBase: base upTo: 2) = base;
			deny: stream atEnd;
			assert: stream next == $1]