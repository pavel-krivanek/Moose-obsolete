*XPath-Core-private
ancestorAxisAnySatisfy: aNodeTest
	self ancestorNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.