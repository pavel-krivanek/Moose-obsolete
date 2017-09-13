removing
removeOppositeFrom: anObject
	| opposite |
	opposite := anObject perform: oppositeSelector.
	(opposite includes: owner)
		ifTrue: [ opposite uncheckedRemove: owner ]