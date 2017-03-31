enumerating
on: aNodeSet descendantOrSelfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		aNodeSet first
			descendantOrSelfAxis: nodeTest
			predicates: aPredicateCollection.
	aNodeSet allButFirstDo: [:each |
		(each
			descendantOrSelfAxis: nodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	"will be in document order after, but not necessarily level document order"
	^ copy sortOrder: XPathDocumentSortOrder new.