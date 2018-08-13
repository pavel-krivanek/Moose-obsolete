private - backend interface
pvtAddDefinedBehavior: anRGBehavior

	self environment verifyOwnership: anRGBehavior.
	
	definedBehaviors isRingResolved ifFalse: [ 
		self pvtCleanDefinedBehaviors  ].
	
	definedBehaviors add: anRGBehavior.	
	