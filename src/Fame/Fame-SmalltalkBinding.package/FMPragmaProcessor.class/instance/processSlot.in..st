private
processSlot: aSlot in: aClass
	| prop |
	
	(aSlot isKindOf: FMRelationSlot) ifFalse: [
		^ self ].

	prop := elements add: aSlot mooseProperty.

	typeDict at: prop put: aSlot targetClass.
	mmClassDict at: prop put: aClass.
	oppositeDict at: prop put: aSlot inverseName.

	elements add: prop.
	^ prop.
		