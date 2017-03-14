private
followingAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each followingAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.