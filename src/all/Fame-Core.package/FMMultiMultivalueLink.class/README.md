A FMMultiMultivalueLink is an implementation for relationships that updates the opposite link
in a many to many way.

LIBPerson>>initialize
	...
	books := FMMultiMultivalueLink on: self opposite: #authors.
	
LIBPerson>>books: aBookCollection
	books value: aBook

will maintain the link when the books collection changes

LIBBook>>initialize
	...
	authors := FMMultiMultivalueLink on: self opposite: #books.
	
LIBBook>>authors: persons
	authors value: persons