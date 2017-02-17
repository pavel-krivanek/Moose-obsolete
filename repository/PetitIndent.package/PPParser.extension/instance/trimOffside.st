*PetitIndent
trimOffside
	"
		trim blanks and check if I am in offside position
	"
	^ 
	(#offside asParser, self ==> #last)" /
	(#startOfLine asParser not, #blank asParser star, self ==> #last)"

	