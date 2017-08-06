slots
relationSlots 

	^ (self slots select: [:aSlot | aSlot isKindOf: FMRelationSlot]).

