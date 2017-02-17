enumerating
on: aNodeSet descendantAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) descendantAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			descendantAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.