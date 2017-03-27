enumerating
on: aNodeSet selfAxis: aNodeTestStringOrBlock
	| copy |

	copy := aNodeSet copyEmpty.
	aNodeSet isEmpty
		ifFalse: [| nodeTest |
			nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
			aNodeSet do: [:each |
				each
					selfAxisSelect: nodeTest
					into: copy]].
	^ copy.