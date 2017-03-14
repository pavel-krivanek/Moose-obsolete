printing
printInterfaceAndAssigments
	|s|
	s := WriteStream on: (String new).
	self printInterfaceAndAssigmentsOn: s.
	^ s contents