initialization
linkUp

	inverseSlot := self targetClass slotNamed: inverseName.
	(self inverseSlot isKindOf: FMRelationSlot)
		ifFalse: [ self error: 'Invalid association: ... ' ].
		
	self inverseSlot inverseName = self name
		ifFalse: [ self error: 'Invalid association: inverse names do not match' ].