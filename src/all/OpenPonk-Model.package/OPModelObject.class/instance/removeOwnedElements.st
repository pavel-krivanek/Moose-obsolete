removing
removeOwnedElements
	self ownedElements copy do: [ :each | self remove: each ]