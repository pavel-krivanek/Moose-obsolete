Roassal2 - accessing
labels
	| priorities |
	self flag: 'I have no idea why there is sorting by priority'.
	priorities := {(OPUmlKeywordLabel -> 1).
	(OPUmlNameLabel -> 2).
	(OPUmlLabel -> 3).
	(OPUmlTypedElementLabel -> 4)} asDictionary.
	^ ((self ownedElements select: [ :each | each isKindOf: OPUmlLabel ])
		asSortedCollection: [ :a :b | (priorities at: a class) < (priorities at: b class) ])
		asGroup