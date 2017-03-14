enumerating
on: aNodeSet precedingSiblingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) precedingSiblingAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			precedingSiblingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.