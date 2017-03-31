tests - indentation
testIndentation3
	|  aligns push pop  p |
	
	aligns := #aligns asParser.
	push := (nil asParser ==> [ :e | 'a' asParser]) push.
	pop := #pop asParser.
	
	p := push, (self sea: aligns) plus, pop.
	
	self assert: p  parse: 'a'.
	self assert: p  parse: '..a'.
	self assert: p  parse: '..a.aa'.	
	self assert: p  parse: '..a..a...a'.