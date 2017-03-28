initialization
linkUp

	inverseSlot := self targetClass slotNamed: inverseName.
	(inverseSlot isKindOf: FMRelationSlot)
		ifFalse: [ self error: 'Invalid association: ... ' ].
		
	inverseSlot inverseName = self name
		ifFalse: [ self error: 'Invalid association: inverse names do not match' ].