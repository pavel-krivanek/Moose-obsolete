accessing
textFor: aGeneralization
	| labels |
	aGeneralization generalizationSets ifEmpty: [ ^ '' ].
	labels := aGeneralization generalizationSets
		collect: [ :each | 
			String
				streamContents: [ :stream | 
					| props |
					(each name isNotNil and: [ each name isNotEmpty ])
						ifTrue: [ stream
								<< each name;
								<< ' ' ].
					props := OrderedCollection new.
					each isCovering
						ifTrue: [ props add: 'complete' ].
					each isCovering not & self showIncomplete
						ifTrue: [ props add: 'incomplete' ].
					each isDisjoint
						ifTrue: [ props add: 'disjoint' ].
					each isDisjoint not & self showOverlapping
						ifTrue: [ props add: 'overlapping' ].
					props
						ifNotEmpty: [ stream << '{'.
							props do: [ :p | stream << p ] separatedBy: [ stream << ', ' ].
							stream << '}' ] ] ].
	^ labels joinUsing: String cr