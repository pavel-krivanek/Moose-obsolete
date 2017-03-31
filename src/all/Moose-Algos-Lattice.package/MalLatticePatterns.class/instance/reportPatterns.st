report
reportPatterns
	Transcript show: '# of nodes: ', self lattice nodes size printString; cr.
	Transcript show: 'Connections ' , self totalConnections printString; cr.
	Transcript show: 'Top ', self isTopPattern printString; cr.
	Transcript show: 'Bottom ', self isBottomPattern printString; cr.
	Transcript show: 'Specialization ', (self irreducibleSpecialization keys size) printString; cr.
	Transcript show: 'Specialization ', (self irreducibleSpecialization values size) printString; cr.
	Transcript show: 'Horizontal Decomposition ' , self horizontalDecomposition printString; cr.
	Transcript show: 'Horizontal Decomposition Size ' , self hDNodeSize printString; cr.
	self printModulesReport.