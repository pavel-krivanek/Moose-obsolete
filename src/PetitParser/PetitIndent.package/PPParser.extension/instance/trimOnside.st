*PetitIndent
trimOnside
	"
		trim blanks and check if I am in onside position
	"
	^
	(#onside asParser, self ==> #last)" /
	(#startOfLine asParser not, #blank asParser star, self ==> #last)"

	