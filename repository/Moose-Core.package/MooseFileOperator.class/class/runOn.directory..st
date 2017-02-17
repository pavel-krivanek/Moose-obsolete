running
runOn: aMooseModel directory: aFolder
	^ self new
		rootFolder: aFolder;
		model: aMooseModel;
		run