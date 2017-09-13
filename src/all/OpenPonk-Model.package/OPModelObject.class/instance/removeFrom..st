removing
removeFrom: anOwner
	self removeRelatedElements.
	self removeOwnedElements.
	self detach.
	self changed