*XPath-Core-private
followingAxisAnySatisfy: aNodeTest
	self followingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.