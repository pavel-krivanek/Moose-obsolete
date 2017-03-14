enumerating
on: aNodeSet ancestorOrSelfAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) ancestorOrSelfAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			ancestorOrSelfAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.