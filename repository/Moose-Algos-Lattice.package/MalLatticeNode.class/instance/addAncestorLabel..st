ancestorsLabel
addAncestorLabel: aCollection
	anscentorLabel ifNil: [anscentorLabel := OrderedCollection new].
	aCollection ifNotEmptyDo: [:aNode | anscentorLabel add: aNode] 