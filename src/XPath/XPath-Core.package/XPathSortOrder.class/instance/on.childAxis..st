enumerating
on: aNodeSet childAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first childAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			childAxisSelect: nodeTest
			into: copy].
	^ copy.