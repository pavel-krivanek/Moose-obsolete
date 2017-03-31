private
parentAxisAnySatisfy: aNodeTest
	^ self anySatisfy: [:each |
		each parentAxisAnySatisfy: aNodeTest]