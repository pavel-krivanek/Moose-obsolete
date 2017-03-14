as yet unclassified
testLetBlock3
	| setIl restoreIl expr trim p input |
	setIl := self parserInstanceFor: #setIl.
	restoreIl := self parserInstanceFor: #restoreIl.
	expr := self parserInstanceFor: #expr.
	trim := self parserInstanceFor: #trim.
	
	p := setIl, #any asParser, trim, expr, restoreIl ==> #fourth.

	input := 
'
  printf a
  printf b'.
	
	result := self assert: p end fail: input.
    
	