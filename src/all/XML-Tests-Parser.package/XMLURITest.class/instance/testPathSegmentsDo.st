tests
testPathSegmentsDo
	self allURIStringsDo: [:uriString | | uri visited |
		uri := uriString asXMLURI.
		visited := OrderedCollection new.
		uri pathSegmentsDo: [:each | visited addLast: each].
		self assert: visited = uri pathSegments]