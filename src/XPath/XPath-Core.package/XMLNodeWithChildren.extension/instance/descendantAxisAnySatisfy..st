*XPath-Core-private
descendantAxisAnySatisfy: aNodeTest
	self descendantNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.