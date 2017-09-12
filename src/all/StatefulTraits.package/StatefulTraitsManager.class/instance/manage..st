accessing
manage: aClass

	| info | 
	
	(self manages: aClass) ifTrue: [ 
		^ self mergedClasses detect: [ :each | each mergedClass = aClass ] ].
	
	info := StatefulTraitsMergedClassInfo on: aClass.
	self mergedClasses add: info.
	^ info