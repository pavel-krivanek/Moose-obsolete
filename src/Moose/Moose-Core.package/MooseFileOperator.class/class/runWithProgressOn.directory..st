running
runWithProgressOn: aMooseModel directory: aFolder
	^ self new
		rootFolder: aFolder;
		model: aMooseModel;
		runWithProgress