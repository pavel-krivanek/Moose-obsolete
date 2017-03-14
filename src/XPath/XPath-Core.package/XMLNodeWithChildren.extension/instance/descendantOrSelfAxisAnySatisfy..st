*XPath-Core-private
descendantOrSelfAxisAnySatisfy: aNodeTest
	self allNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.