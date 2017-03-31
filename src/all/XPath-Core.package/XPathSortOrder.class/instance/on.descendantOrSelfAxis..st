enumerating
on: aNodeSet descendantOrSelfAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first descendantOrSelfAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			descendantOrSelfAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.