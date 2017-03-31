accessing-derived
allDescendants
	| collection result |
	collection := self descendants.
	result := collection isEmpty
		ifTrue: [ collection ]
		ifFalse: [ (collection flatCollect: [ :each | each allDescendants ]) , collection ].
	(result size > self subject aliases size) ifTrue: [ self error: 'Sanity check... this is impossible' ].
	^ result