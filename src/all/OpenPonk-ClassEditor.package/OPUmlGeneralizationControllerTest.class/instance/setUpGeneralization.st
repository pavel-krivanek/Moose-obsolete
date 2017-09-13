running
setUpGeneralization
	parent := OPUMLClass new name: 'Parent'.
	child := OPUMLClass new name: 'Child'.
	generalization := OPUMLGeneralization new.
	generalization
		general: parent;
		specific: child