tests
testQueryKeysAndValuesDo
	self allURIStringsDo: [:each | | uri visited |
		uri := each asXMLURI.
		visited := OrderedCollection new.
		self assert:
			(uri queryKeysAndValuesDo: [:key :value |
				visited addLast: key -> value]) == uri.
		self assert: visited = uri query]