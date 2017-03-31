private
ancestorAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each ancestorAxisAnySatisfy: aNodeTest]