*PetitIndent
setIl
	"
		Sets the current indentation level to the current column by
			pushing a comparison expression on top of the stack.
		
		use #aligns asParser to verify, if column aligns
		use #restoreIl asParser to use previous indentation level
	"
	^ [ :context | 
		| level compare |
		level := context column.
	
		compare := PPCompareParser 
						on: [ :ctx | ctx column = level  ] 
						message: 'expected column: ', level asString.
	
		context indentStack push: compare.
	] asParser