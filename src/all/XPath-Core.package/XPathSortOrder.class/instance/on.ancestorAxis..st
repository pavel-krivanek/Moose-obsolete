enumerating
on: aNodeSet ancestorAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first ancestorAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			ancestorAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.