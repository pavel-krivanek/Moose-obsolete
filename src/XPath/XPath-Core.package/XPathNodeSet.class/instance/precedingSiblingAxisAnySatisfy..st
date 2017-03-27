private
precedingSiblingAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each precedingSiblingAxisAnySatisfy: aNodeTest]