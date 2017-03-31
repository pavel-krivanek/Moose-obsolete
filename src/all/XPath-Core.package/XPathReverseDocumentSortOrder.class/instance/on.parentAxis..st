enumerating
on: aNodeSet parentAxis: aNodeTestStringOrBlock
	| copy |

	copy := aNodeSet copyEmpty.
	aNodeSet isEmpty
		ifFalse: [| nodeTest |
			nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
			aNodeSet reverseDo: [:each |
				each
					parentAxisSelect: nodeTest
					ifNotPresentInto: copy]].
	"parent is a document order axis according to the spec"
	^ copy sortOrder: self asReversedSortOrder.