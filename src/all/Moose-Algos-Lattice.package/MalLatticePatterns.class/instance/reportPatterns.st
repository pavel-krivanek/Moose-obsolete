report
reportPatterns
	Transcript
		show: '# of nodes: ';
		show: self lattice nodes size printString;
		cr.
	Transcript
		show: 'Connections ';
		show: self totalConnections printString;
		cr.
	Transcript
		show: 'Top ';
		show: self isTopPattern printString;
		cr.
	Transcript
		show: 'Bottom ';
		show: self isBottomPattern printString;
		cr.
	Transcript
		show: 'Specialization ';
		show: self irreducibleSpecialization keys size printString;
		cr.
	Transcript
		show: 'Specialization ';
		show: self irreducibleSpecialization values size printString;
		cr.
	Transcript
		show: 'Horizontal Decomposition ';
		show: self horizontalDecomposition printString;
		cr.
	Transcript
		show: 'Horizontal Decomposition Size ';
		show: self hDNodeSize printString;
		cr.
	self printModulesReport