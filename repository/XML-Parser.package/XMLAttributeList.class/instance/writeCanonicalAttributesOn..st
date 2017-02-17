private
writeCanonicalAttributesOn: aWriter
	| sortedAttributes |

	sortedAttributes :=
		self sorted: [:a :b | | namespaceURIOfA namespaceURIOfB |
			"the namespace URI is the primary key and
			the local name is the secondary key"
			namespaceURIOfA := a namespaceURI.
			namespaceURIOfB := b namespaceURI.
			namespaceURIOfA < namespaceURIOfB
				or: [namespaceURIOfA = namespaceURIOfB
					and: [a localName <= b localName]]].

	"use to:do: for fast writing"
	1 to: sortedAttributes size do: [:i | | attribute |
		attribute := sortedAttributes at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value].