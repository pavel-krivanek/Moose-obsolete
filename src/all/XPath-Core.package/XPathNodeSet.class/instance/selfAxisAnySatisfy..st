private
selfAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each selfAxisAnySatisfy: aNodeTest]