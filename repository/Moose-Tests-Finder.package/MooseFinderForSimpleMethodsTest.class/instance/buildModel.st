running
buildModel 
	| class |
	model := MooseModel new.
	class := FAMIXClass new.
	class 
		addMethod: (FAMIXMethod new name: 'name1');
		addMethod: (FAMIXMethod new name: 'name2');
		addMethod: (FAMIXMethod new name: 'name3').
