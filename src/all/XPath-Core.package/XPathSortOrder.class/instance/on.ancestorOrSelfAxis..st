enumerating
on: aNodeSet ancestorOrSelfAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first ancestorOrSelfAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			ancestorOrSelfAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.