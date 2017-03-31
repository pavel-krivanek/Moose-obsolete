tests
testQueryKeys
	self allURIStringsDo: [:uriString | | uri uniqueQueryKeys |
		uri := uriString asXMLURI.
		uniqueQueryKeys := OrderedCollection new.
		uri query do: [:each |
			(uniqueQueryKeys includes: each key)
				ifFalse: [uniqueQueryKeys addLast: each key]].
		self assert: uri queryKeys = uniqueQueryKeys]