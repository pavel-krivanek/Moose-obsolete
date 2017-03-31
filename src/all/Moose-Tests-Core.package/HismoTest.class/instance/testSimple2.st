testing - simple scenario
testSimple2
	| model1 cls1 model2 |
	model1 := MooseModel new.
	cls1 := FAMIXClass new name: #ClassA.
	cls1 addMethod: (FAMIXMethod new name: 'method1()').
	cls1 addMethod: (FAMIXMethod new name: 'method2()').
	model1 add: cls1.
	
	model2 := MooseModel new.
	cls1 := FAMIXClass new name: #ClassA.
	cls1 addMethod: (FAMIXMethod new name: 'method1()').
	cls1 addMethod: (FAMIXMethod new name: 'method2()').
	cls1 addMethod: (FAMIXMethod new name: 'method3()').
	model2 add: cls1.