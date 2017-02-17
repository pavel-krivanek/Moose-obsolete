tests
testQueryKeysDo
	self allURIStringsDo: [:uriString | | uri visited |
		uri := uriString asXMLURI.
		visited := OrderedCollection new.
		self assert:
			(uri queryKeysDo: [:each |
				visited addLast: each]) == uri.
		self assert: visited = uri queryKeys]