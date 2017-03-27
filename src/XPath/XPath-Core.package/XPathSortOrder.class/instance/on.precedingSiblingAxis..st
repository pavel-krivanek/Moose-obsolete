enumerating
on: aNodeSet precedingSiblingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first precedingSiblingAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			precedingSiblingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.