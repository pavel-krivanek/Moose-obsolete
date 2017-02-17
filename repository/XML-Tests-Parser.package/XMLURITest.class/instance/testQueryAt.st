tests
testQueryAt
	self allURIStringsDo: [:uriString | | uri visitedKeys |
		uri := uriString asXMLURI.
		visitedKeys := Set new.
		uri query reverseDo: [:each |
			(visitedKeys includes: each key)
				ifFalse: [
					self assert:
						(uri queryAt: each key) = each value.
					visitedKeys add: each key]].
		self assert: (uri queryAt: 'absent') = '']