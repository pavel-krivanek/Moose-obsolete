*Famix-Smalltalk
extendedClassesGroup
	<navigation: 'Extended classes in package'>
	
	^ FAMIXClassGroup 
		withAll: self extendedClasses
		withDescription: 'Extended classes in package ', self name