meta
resetMooseEntities

	self slots do: [ :aSlot |
		aSlot isFMRelationSlot ifTrue: [ aSlot resetMooseProperty ] ]