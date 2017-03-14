private
childAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each childAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.