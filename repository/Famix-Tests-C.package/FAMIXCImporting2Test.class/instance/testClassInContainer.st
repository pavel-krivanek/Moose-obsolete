tests
testClassInContainer	
	| cls module |
	cls := model entityNamed: #'Siconos::MyClass'.
	module := model entities detect: [ :e | e class == FAMIXPackage ].
	self assert: cls belongsTo equals: module.
