private
ancestorAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each ancestorAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.