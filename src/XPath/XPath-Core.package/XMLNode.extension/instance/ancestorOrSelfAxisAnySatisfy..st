*XPath-Core-private
ancestorOrSelfAxisAnySatisfy: aNodeTest
	self withAncestorNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.