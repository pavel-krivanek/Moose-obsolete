examples
testPragmasAsMetamodel
	| mm |
	mm := self testPragmaProcessing asMetamodel.
	mm class should = FMMetaRepository.
	mm elements isEmpty should beFalse.
	mm packages isEmpty should beFalse.
	mm packages size should = 1.
	mm packages anyOne name should = #LIB.
	mm classes isEmpty should beFalse.
	mm classes size should = 3.
	(mm elementNamed: 'LIB.Book.authors') hasOpposite should beTrue.
	(mm elementNamed: 'LIB.Book.authors') opposite should = (mm elementNamed: 'LIB.Person.books').
	^ mm