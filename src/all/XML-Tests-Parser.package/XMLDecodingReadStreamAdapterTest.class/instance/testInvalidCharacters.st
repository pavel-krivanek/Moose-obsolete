tests
testInvalidCharacters
	self invalidStreamCollections do: [:each | | streamAdapter |
		streamAdapter := self newStreamAdapterOn: (self newStreamOn: each).
		[streamAdapter atEnd]
			whileFalse: [
				self
					should: [streamAdapter next]
					raise: XMLEncodingException].
		self assert: streamAdapter atEnd]