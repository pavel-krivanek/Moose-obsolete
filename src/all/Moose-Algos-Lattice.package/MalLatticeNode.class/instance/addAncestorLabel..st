ancestorsLabel
addAncestorLabel: aCollection
	anscentorLabel ifNil: [ anscentorLabel := OrderedCollection new ].
	aCollection ifNotEmpty: [ :aNode | anscentorLabel add: aNode ]