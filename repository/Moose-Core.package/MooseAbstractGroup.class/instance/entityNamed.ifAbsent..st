public interface
entityNamed: aMooseName ifAbsent: aBlock 
	^ self entityStorage at: aMooseName ifAbsent: aBlock