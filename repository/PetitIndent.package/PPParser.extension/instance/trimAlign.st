*PetitIndent
trimAlign
	"
		trim blanks and check if I am aligned
	"
	^ (#align asParser, #blank asParser not, self ==> #last)

	