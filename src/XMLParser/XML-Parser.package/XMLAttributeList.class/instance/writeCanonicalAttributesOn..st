private
writeCanonicalAttributesOn: aWriter
	| sortedAttributes |

	(sortedAttributes := self asArray) sort: [:a :b | | prefixOfA prefixOfB |
		prefixOfA := a prefix.
		prefixOfB := b prefix.
		prefixOfA = prefixOfB
			ifTrue: [
				(a name xmlLocalNameAfterPrefix: prefixOfA)
					<= (b name xmlLocalNameAfterPrefix: prefixOfB)]
			ifFalse: [| uriOfA uriOfB |
				"the namespace URI is the primary key and
				the local name is the secondary key"
				uriOfA := a resolvePrefix: prefixOfA.
				uriOfB := b resolvePrefix: prefixOfB.
				uriOfA < uriOfB
					or: [
						uriOfA = uriOfB
							and: [
								(a name xmlLocalNameAfterPrefix: prefixOfA)
									<= (b name xmlLocalNameAfterPrefix: prefixOfB)]]]].

	"use to:do: for fast writing"
	1 to: sortedAttributes size do: [:i | | attribute |
		attribute := sortedAttributes at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value].