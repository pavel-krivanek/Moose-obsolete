merging
mergeSlot: aSlot

	| newSlot |
	newSlot := aSlot copy.
	(self mergedClass hasSlotNamed: newSlot name) 
		ifTrue: [ self mergedClass removeSlot: (self mergedClass slotNamed: newSlot name) ].
	self mergedClass addSlot: newSlot.
	self slots add: newSlot name.
