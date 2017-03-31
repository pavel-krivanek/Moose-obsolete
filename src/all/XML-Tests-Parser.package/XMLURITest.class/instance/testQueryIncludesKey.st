tests
testQueryIncludesKey
	self allURIStringsDo: [:uriString | | uri |
		uri := uriString asXMLURI.
		uri query do: [:each |
			self assert: (uri queryIncludesKey: each key)].
		self deny: (uri queryIncludesKey: 'absent')]