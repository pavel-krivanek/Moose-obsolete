enumerating
on: aNodeSet parentAxis: aNodeTestStringOrBlock
	| copy nodeTest |

	copy := aNodeSet copyEmpty.
	aNodeSet size > 0
		ifFalse: [^ copy].

	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	1 to: aNodeSet size do: [:i |
		(aNodeSet at: i)
			parentAxisSelect: nodeTest
			ifNotPresentInto: copy].
	^ copy.