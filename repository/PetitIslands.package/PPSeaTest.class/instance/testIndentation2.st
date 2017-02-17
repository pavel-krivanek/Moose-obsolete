tests - indentation
testIndentation2
	|  aligns push  p |
	
	aligns := #aligns asParser.
	push := (nil asParser ==> [ :e | 'a' asParser]) push.
	
	p := push, (self sea: aligns) plus.
	self assert: p  parse: 'a'.
	self assert: p  parse: '..a'.
	self assert: p  parse: '..a.aa'.	
	self assert: p  parse: '..a..a...a'.
	
	self assert: result second size = 3.