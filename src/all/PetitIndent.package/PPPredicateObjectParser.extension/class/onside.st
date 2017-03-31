*PetitIndent
onside
	| align blank |
	"
		Consume blank characters and checks, if the column is in the onside position 
		(as set by #setIl).
	"
	
	align := #align asParser.
	blank := #blank asParser.
	
	^ (align, blank plus) flatten