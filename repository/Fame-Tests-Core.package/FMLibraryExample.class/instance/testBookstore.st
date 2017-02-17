running
testBookstore
	| tower names |
	tower := FMTower new.
	tower metamodel importString: FMMSEParserTest sampleMetaMse.
	names := tower metamodel elements collect: [ :each | each fullName ].
	names should include: 'LIB'.
	names should include: 'LIB.Person'.
	names should include: 'LIB.Person.name'.
	names should include: 'LIB.Book'.
	names should include: 'LIB.Book.authors'.
	names should include: 'LIB.Library'.
	names should include: 'LIB.Library.librarian'.
	names should include: 'LIB.Library.books'.
	(tower metamodel elements detect: [ :each | each fullName = 'LIB.Library.books' ]) type should =
			(tower metamodel elements detect: [ :each | each fullName = 'LIB.Book' ]).
	(tower metamodel elements detect: [ :each | each fullName = 'LIB.Person.name' ]) type should =
			(FMMetaRepository fm3 elementNamed: 'String').
	names size should = 10