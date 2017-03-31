accessing
computeResult 
	| tmp |
	tmp := OrderedCollection new.
	self obsoletePragmaNames do: [:each | 
		self model allAnnotationTypes 
				entityNamed: each 
				ifAbsent: [ OrderedCollection new ]
				ifPresent: [:ann | tmp addAll: ann annotatedEntities ] ].

	^ FAMIXMethodGroup withAll: tmp 