enumerating
on: aNodeSet selfAxis: aNodeTestStringOrBlock
	| copy |

	copy := aNodeSet copyEmpty.
	aNodeSet isEmpty
		ifFalse: [| nodeTest |
			nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
			aNodeSet reverseDo: [:each |
				each
					selfAxisSelect: nodeTest
					into: copy]].
	^ copy sortOrder: self asReversedSortOrder.