tests
testInvalidCharacters
	| streamAdapter |

	streamAdapter :=
		self newStreamAdapterOn:
			self invalidStreamCollection readStream.
	[streamAdapter atEnd]
		whileFalse: [
			self
				should: [streamAdapter next]
				raise: XMLEncodingException].
	self assert: streamAdapter atEnd.