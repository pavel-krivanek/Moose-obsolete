reference model access
privateTestAccessingVar: aVarName from: aMethodName shouldBeRead: aBoolean hasAccessesSize: anInteger
	| methodName var access |
	methodName := self model allMethods entityNamed: aMethodName.
	var := (self model allWithSubTypesOf: FAMIXStructuralEntity) entityNamed: aVarName.
	self assert: (var incomingAccesses select: [ :each | each accessor = methodName ]) size equals: anInteger.
	access := (var incomingAccesses select: [ :each | each accessor = methodName ]) first.
	self assert: access isRead == aBoolean.
	self assert: access isWrite ~~ aBoolean