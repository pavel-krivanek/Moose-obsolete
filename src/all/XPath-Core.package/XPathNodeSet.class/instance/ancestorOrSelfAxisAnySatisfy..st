private
ancestorOrSelfAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each ancestorOrSelfAxisAnySatisfy: aNodeTest]