*XPath-Core-private
attributeAxisSelect: anAttributeNodeTest at: aPosition into: aNodeSet
	(aPosition > 0
		and: [self hasAttributes
			and: [self attributeNodes size >= aPosition]])
		ifFalse: [^ aNodeSet].

	anAttributeNodeTest isAnyNodeTest
		ifTrue: [
			aNodeSet addLast:
				(self attributeNodes at: aPosition)]
		ifFalse: [
			anAttributeNodeTest isAttributeNodeTestForName
				ifTrue: [
					"only one attribute can have this exact name"
					aPosition = 1
						ifTrue: [
							self
								attributeAxisSelectName: anAttributeNodeTest name
								into: aNodeSet]]
				ifFalse: [| totalMatched |
					totalMatched := 0.
					self attributeNodesDo: [:each |
						((anAttributeNodeTest value: each)
							and: [(totalMatched := totalMatched + 1) = aPosition])
							ifTrue: [
								aNodeSet addLast: each.
								^ aNodeSet]]]].
	^ aNodeSet.