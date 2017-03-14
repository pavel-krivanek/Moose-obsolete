examples
testSCGLibraryAsModel
	| m mm lib |
	mm := self testPragmasAsMetamodel.
	lib := self testCreateSCGLibrary.
	m := FMRepository with: mm.
	m add: lib.
	m metamodel should = mm.
	m elements notEmpty should beTrue.	"----------------- KNOWN TO FAIL ----------------
	should implement a #complete method
	self assert: (m elements size = --------------"
	1 + 1 + 3 + 5.	"library"	"librarian"	"books"	"authors"
	^ m