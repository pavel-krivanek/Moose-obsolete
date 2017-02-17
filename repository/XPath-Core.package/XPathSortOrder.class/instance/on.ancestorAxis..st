enumerating
on: aNodeSet ancestorAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) ancestorAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			ancestorAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.