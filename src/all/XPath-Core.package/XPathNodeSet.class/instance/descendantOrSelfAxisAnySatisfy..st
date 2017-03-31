private
descendantOrSelfAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each descendantOrSelfAxisAnySatisfy: aNodeTest]