running
buildModel
	model := MooseModel new.
	model 
		add: (FAMIXNamespace new name: 'name1');
		add: (FAMIXNamespace new name: 'name2');
		add: (FAMIXNamespace new name: 'name3').