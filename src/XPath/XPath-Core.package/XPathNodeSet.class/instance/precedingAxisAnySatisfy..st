private
precedingAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each precedingAxisAnySatisfy: aNodeTest]