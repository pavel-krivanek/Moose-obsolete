interactions
addEmbeddingInteractions: id element: e
	|closings aNumber |
	aNumber := self alignPoint: e center.
	closings := OrderedCollection new.
	(interactions at: e ifAbsent: [OrderedCollection new]) 
		do: [ :i | (i external not and: [i contained not])
			ifTrue: [ 
				closings add: (i addEventHandlers: stream id: id  element: e center: aNumber)] ].
	^(closings reverse)