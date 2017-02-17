enumerating
on: aNodeSet followingAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) followingAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			followingAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.