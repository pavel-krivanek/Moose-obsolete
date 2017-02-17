*PetitIndent-OffsideRule
dedentOL
	| ws |
"	ws := #startOfLine asParser, (#alignsOL asParser not, #blank asParser) star."
	ws := #space asParser star.
	^ ws, #removeOL asParser, (#alignsOL asParser / #offsideOL asParser)  ==> [ :tokens | #dedent ]