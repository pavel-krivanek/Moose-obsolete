private
descendantAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each descendantAxisAnySatisfy: aNodeTest]