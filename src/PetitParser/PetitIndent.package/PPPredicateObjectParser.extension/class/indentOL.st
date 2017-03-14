*PetitIndent-OffsideRule
indentOL
	| ws |
	ws := #startOfLine asParser, (#alignsOL asParser not, #space asParser) star.
	^ ws, #space asParser plus, #setOL asParser ==> [ :tokens | #indent ]