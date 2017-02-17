tests
testGroupFor

	| entity1 entity2 model classGroup methodGroup |
	entity1 := FAMIXClass new.
	entity2 := FAMIXClass new.

	model := MooseModel new.
	model addAll: {entity1 . entity2}.

	classGroup := model groupFor: #allClasses.
	self assert: (classGroup class == FAMIXClassGroup).
	self assert: (classGroup entities includesAllOf: {entity1 . entity2}).
	
	methodGroup := model groupFor: #allMethods.
	self assert: (methodGroup class == MooseGroup).
	self assert: (methodGroup isEmpty)