adding/removing
removeAll: collection 
	 
	collection do: [:each | self removeEntity: each]. 
	self updateTypeAccordingToEntities