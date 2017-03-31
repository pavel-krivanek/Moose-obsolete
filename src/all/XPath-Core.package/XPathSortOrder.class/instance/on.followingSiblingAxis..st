enumerating
on: aNodeSet followingSiblingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first followingSiblingAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			followingSiblingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.