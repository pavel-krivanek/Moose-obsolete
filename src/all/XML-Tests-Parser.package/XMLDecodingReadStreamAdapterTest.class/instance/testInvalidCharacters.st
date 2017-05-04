tests
testInvalidCharacters
	self invalidStreamCollections do: [:each | | streamAdapter |
		streamAdapter := self newStreamAdapterOn: each readStream.
		[streamAdapter atEnd]
			whileFalse: [
				self
					should: [streamAdapter next]
					raise: XMLEncodingException].
		self assert: streamAdapter atEnd]