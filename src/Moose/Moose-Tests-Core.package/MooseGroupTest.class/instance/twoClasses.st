utility
twoClasses
	| classA classB |
	classA := FAMIXClass new.
	classA addMethod: FAMIXMethod new.
	classB := FAMIXClass new.
	classB addMethod: FAMIXMethod new.
	classB addMethod: FAMIXMethod new.
	^ FAMIXTypeGroup withAll: {classA . classB}.