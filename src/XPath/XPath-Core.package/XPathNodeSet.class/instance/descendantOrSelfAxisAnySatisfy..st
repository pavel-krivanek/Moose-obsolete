private
descendantOrSelfAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each descendantOrSelfAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.