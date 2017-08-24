statefulTraits
statefulTraits

	| info |
	
	info := StatefulTraitsManager uniqueInstance mergedClasses detect: [ :e | e mergedClass = self ] ifNone: [ ^ { } ].
	^ info traits