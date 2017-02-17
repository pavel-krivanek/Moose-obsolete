enumerating
on: aNodeSet descendantOrSelfAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) descendantOrSelfAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			descendantOrSelfAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.