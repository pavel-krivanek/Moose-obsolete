*PetitIndent
offside
	| aligns blank sol nl |
	"
		Consume blank characters and checks if the column is still in offside position
		(as set by #setIl).	
	"
	
	aligns := #aligns asParser.
	blank := #blank asParser.
	sol := #startOfLine asParser.
	nl := #newline asParser.
	
	^ ((sol not, blank star, nl), (aligns not, blank) star, aligns not) flatten