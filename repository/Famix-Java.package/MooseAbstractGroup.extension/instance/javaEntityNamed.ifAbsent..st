*Famix-Java
javaEntityNamed: aMooseName ifAbsent: aBlock
	^ self entityStorage
		at: aMooseName
		ifAbsent: [ self entityStorage at: '<Default Package>::' , aMooseName ifAbsent: aBlock ]