private
followingSiblingAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each followingSiblingAxisAnySatisfy: aNodeTest]