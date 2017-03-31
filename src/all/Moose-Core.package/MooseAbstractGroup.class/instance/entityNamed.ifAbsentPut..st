public interface
entityNamed: aMooseName ifAbsentPut: aValue 
	^ self entityNamed: aMooseName ifAbsent: [self add: aValue]