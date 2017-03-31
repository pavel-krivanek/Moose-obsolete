running
testPersonBook
	| book person |
	book := LIBBook new.
	person := LIBPerson new.
	book authors notNil should beTrue.
	book authors isCollection should beTrue.
	person books notNil should beTrue.
	person books isCollection should beTrue.
	person books add: book.
	book authors size should = 1.
	book authors anyOne should = person.
	person books size should = 1.
	person books anyOne should = book