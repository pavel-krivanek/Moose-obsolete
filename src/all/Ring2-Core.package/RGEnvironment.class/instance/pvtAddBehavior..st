private - backend interface
pvtAddBehavior: anRGBehavior

	self environment verifyOwnership: anRGBehavior.
	
	behaviors isRingResolved ifFalse: [ 
		self pvtCleanBehaviors ].
	
	(behaviors includes: anRGBehavior)
		ifFalse: [ 
			behaviors add: anRGBehavior.
			self announcer behaviorAdded: anRGBehavior].
		
	
		