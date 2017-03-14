private
precedingAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each precedingAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.