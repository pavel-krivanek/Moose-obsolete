public interface
entityNamed: aMooseName ifAbsent: aBlock ifPresent: anotherBlock
	| entity |
	entity := self entityStorage at: aMooseName ifAbsent: [nil].
	^ entity isNil 
		ifTrue: [aBlock value]
		ifFalse: [anotherBlock value: entity]