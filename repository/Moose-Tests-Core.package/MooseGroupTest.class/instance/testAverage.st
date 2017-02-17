tests
testAverage
	| classes classA classB |
	classA := FAMIXClass new.
	classA addMethod: FAMIXMethod new.
	classB := FAMIXClass new.
	classB addMethod: FAMIXMethod new.
	classB addMethod: FAMIXMethod new.
	classes := FAMIXTypeGroup
		withAll:
			{classA.
			classB}.
	self assert: (classes average: #numberOfMethods) equals: 1.5