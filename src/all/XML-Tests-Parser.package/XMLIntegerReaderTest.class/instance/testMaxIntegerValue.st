tests
testMaxIntegerValue
	| maxValue |

	maxValue := XMLIntegerReader maxIntegerValue.
	2 to: self maxBase do: [:base |
		self assert:
			(XMLIntegerReader
				readFrom: (self newStreamOn: (maxValue printStringBase: base))
				withBase: base) = maxValue.
		1 to: base do: [:i |
			self  assert:
				(XMLIntegerReader
					readFrom: (self newStreamOn: ((maxValue + i) printStringBase: base))
					withBase: base) = maxValue]].