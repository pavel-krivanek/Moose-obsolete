tests
testMaxIntegerValue
	| maxValue |

	maxValue := XMLIntegerReader maxIntegerValue.
	2 to: self maxBase do: [:base |
		self assert:
			(XMLIntegerReader
				readFrom: (maxValue printStringBase: base) readStream
				withBase: base) = maxValue.
		1 to: base do: [:i |
			self  assert:
				(XMLIntegerReader
					readFrom: ((maxValue + i) printStringBase: base) readStream
					withBase: base) = maxValue]].