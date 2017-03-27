enumerating
on: aNodeSet followingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := aNodeSet first followingAxis: nodeTest.
	aNodeSet allButFirstDo: [:each |
		each
			followingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.