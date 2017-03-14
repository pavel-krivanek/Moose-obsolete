private
selfAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each selfAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.