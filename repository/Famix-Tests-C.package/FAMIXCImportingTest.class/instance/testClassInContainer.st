tests
testClassInContainer	
	| cls module |
	cls := model entityNamed: #'::AClass'.
	module := model entities detect: [ :e | e class == FAMIXModule ].
	self assert: cls belongsTo equals: module.
