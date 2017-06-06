report
printModulesReport
	| modules nodes |
	modules := ModuleIdentification on: self lattice.
	nodes := (modules flatCollect: [ :each | each ]) asSet.
	modules
		ifNotNil: [ Transcript
				show: 'Number of modules ';
				show: modules size printString;
				cr.
			Transcript
				show: 'Number of Nodes in modules ';
				show: nodes size printString;
				cr ]
		ifNil: [ Transcript
				show: 'Number of modules 0';
				cr.
			Transcript
				show: 'Number of Nodes in modules 0';
				cr ]