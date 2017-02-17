*PetitIndent
align
	| aligns blank sol nl |
	"
		Consume blank characters up to the point when column aligns.	
		Empty lines are not consumed, only possible trailing blanks on a previous line.
	"
	
	aligns := #aligns asParser.
	blank := #blank asParser.
	sol := #startOfLine asParser.
	nl := #newline asParser.
	
	^ ((sol not, blank star, nl) optional, (aligns not, blank) star, aligns) flatten