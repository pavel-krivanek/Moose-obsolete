interactions
addContainedInteractions: id element: e
	| aNumber |
	aNumber := self alignPoint: e center.
	(interactions at: e ifAbsent: [OrderedCollection new]) 
		do: [ :i | i contained
			ifTrue: [ i addEventHandlers: stream id: id  element: e center: aNumber] ]