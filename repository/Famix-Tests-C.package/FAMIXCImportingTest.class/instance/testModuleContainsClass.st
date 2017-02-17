tests
testModuleContainsClass
	| cls module |
	cls := model entityNamed: #'::AClass'.
	module := model entities detect: [ :e | e class == FAMIXModule ].
	self assert: module types size equals: 1.
	self assert: module types anyOne equals: cls.