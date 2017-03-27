enumerating
on: aNodeSet descendantAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	| copy nodeTest |

	aNodeSet isEmpty
		ifTrue: [^ aNodeSet copyEmpty].
	nodeTest := aNodeTestStringOrBlock asXPathNodeTest.
	copy :=
		aNodeSet last
			descendantAxis: nodeTest
			predicates: aPredicateCollection.
	aNodeSet allButLastReverseDo: [:each |
		(each
			descendantAxis: nodeTest
			predicates: aPredicateCollection)
				addAllTo: copy].
	"will be in document order after, but not necessarily level document order"
	^ copy sortOrder: XPathDocumentSortOrder new.