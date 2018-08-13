private - backend interface
pvtAddLocalMethod: anRGMethod

	self environment verifyOwnership: anRGMethod.
	
	localMethods isRingResolved ifFalse: [ 
		self pvtCleanLocalMethods ].

	(self hasResolved: #tagsForMethods) 
		ifFalse: [ self pvtCleanTagsForMethods ].

	anRGMethod tags do: [ :aTag |
		self pvtAddMethodTag: aTag ].

	localMethods add: anRGMethod.	
	