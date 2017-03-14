enumerating
on: aNodeSet childAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	aNodeSet size > 0
		ifFalse: [^ aNodeSet copyEmpty].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy := (aNodeSet at: 1) childAxis: nodeTest.
	2 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			childAxisSelect: nodeTest
			into: copy].
	^ copy.