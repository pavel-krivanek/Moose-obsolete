enumerating
on: aNodeSet followingSiblingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) followingSiblingAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			followingSiblingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.