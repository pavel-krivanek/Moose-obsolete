private - backend interface
pvtRemoveLocalMethod: anRGMethod

	self environment verifyOwnership: anRGMethod.
	
	localMethods remove: anRGMethod.
	
