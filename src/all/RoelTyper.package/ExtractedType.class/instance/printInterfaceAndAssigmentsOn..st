printing
printInterfaceAndAssigmentsOn: aStream
	aStream nextPutAll: 'Sends: {'.
	self interface
		do: [:symbol | aStream print: symbol]
		separatedBy: [aStream space].
	aStream
		nextPutAll: '}';
		cr;
		nextPutAll: 'Assignments: {'.
	self assignments
		do: [:symbol | aStream print: symbol]
		separatedBy: [aStream space].
	aStream
		nextPutAll: '}';
		cr