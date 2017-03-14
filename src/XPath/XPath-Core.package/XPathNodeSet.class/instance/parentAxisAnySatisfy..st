private
parentAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each parentAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.