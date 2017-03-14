private
ancestorOrSelfAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each ancestorOrSelfAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.