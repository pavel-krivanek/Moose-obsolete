examples
testCreateSCGLibrary
	| lib a1 a2 a3 a4 a5 |
	a1 := LIBPerson new name: 'Erich Gamma'.
	a2 := LIBPerson new name: 'Richard Helm'.
	a3 := LIBPerson new name: 'Ralph Johnson'.
	a4 := LIBPerson new name: 'John Vlissides'.
	a5 := LIBPerson new name: 'Kent Beck'.
	lib := LIBLibrary new
		librarian: (LIBPerson new name: 'Adrian Kuhn');
		books: (Array 
				with: (LIBBook new
						title: 'Design Patterns';
						authors: (Array 
								with: a1
								with: a2
								with: a3
								with: a4))
				with: (LIBBook new
						title: 'Eclipse: Principles, Patterns, and Plug-Ins';
						authors: (Array 
								with: a1
								with: a5))
				with: (LIBBook new
						title: 'Smalltalk Best Practice Patterns';
						authors: (Array with: a5))).
	lib books size should = 3.
	^ lib