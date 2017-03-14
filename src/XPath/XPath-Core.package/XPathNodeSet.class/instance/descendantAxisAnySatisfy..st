private
descendantAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each descendantAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.