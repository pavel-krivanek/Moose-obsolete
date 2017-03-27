enumerating
on: aNodeSet parentAxis: aNodeTestStringOrBlock
	| copy |

	copy := aNodeSet copyEmpty.
	aNodeSet isEmpty
		ifFalse: [| nodeTest |
			nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
			aNodeSet do: [:each |
				each
					parentAxisSelect: nodeTest
					ifNotPresentInto: copy]].
	^ copy.