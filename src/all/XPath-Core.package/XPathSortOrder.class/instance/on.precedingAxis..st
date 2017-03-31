enumerating
on: aNodeSet precedingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first precedingAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			precedingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.