*XPath-Core-private
precedingAxisAnySatisfy: aNodeTest
	self precedingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.