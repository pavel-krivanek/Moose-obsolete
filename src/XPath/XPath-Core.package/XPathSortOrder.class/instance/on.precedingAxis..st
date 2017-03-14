enumerating
on: aNodeSet precedingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) precedingAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			precedingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.