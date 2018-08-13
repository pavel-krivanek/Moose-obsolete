utilities
allSlots

	| superclassSlots aSuperclass |
	aSuperclass := self owner superclass.
	superclassSlots := OrderedCollection new.
	((aSuperclass == self owner) or: [aSuperclass isNil ]) ifFalse: [ 
		 superclassSlots addAll: aSuperclass allSlots ].
	^ (superclassSlots, self layout allSlots) asArray.