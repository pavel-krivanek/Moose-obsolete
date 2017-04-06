initialization
initialize 

	super initialize.
	
	mergedClasses := Set new.
	
	SystemAnnouncer uniqueInstance weak
		when: MethodAdded send: #methodAdded: to: self;
		when: MethodModified send: #methodModified: to: self;
		when: MethodRemoved send: #methodRemoved: to: self;
		when: ClassModificationApplied send: #classModified: to: self.
