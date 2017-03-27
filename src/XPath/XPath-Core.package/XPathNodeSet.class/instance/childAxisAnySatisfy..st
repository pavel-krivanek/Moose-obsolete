private
childAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each childAxisAnySatisfy: aNodeTest]