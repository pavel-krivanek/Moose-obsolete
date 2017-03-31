tests
testPositioning
	| reader string |

	string := 'test'.
	reader := XMLIntegerReader on: string readStream.
	string do: [:each |
		self
			deny: reader atEnd;
			assert: reader peek = each;
			assert: reader next = each].
	self assert: reader atEnd.