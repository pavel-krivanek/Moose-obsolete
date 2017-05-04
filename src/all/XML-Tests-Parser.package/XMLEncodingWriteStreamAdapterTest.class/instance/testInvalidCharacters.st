tests
testInvalidCharacters
	self invalidStreamCollections do: [:each | | streamAdapter |
		streamAdapter := self newStreamAdapter.
		self
			should: [streamAdapter nextPutAll: each]
			raise: XMLEncodingException].