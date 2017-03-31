private
followingAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each followingAxisAnySatisfy: aNodeTest]