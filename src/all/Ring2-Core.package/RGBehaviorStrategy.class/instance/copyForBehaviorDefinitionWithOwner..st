copying
copyForBehaviorDefinitionWithOwner: aNewOwner

	^ self shallowCopy 
		owner: aNewOwner;
		copyForBehaviorDefinitionPostCopy