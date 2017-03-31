tests - indentation
testIndentation
	|  aligns push island p |
	
	aligns := #aligns asParser.
	push := (nil asParser ==> [ :e | 'a' asParser]) push.
	
	island := push, aligns.	
		
	self assert: island parse: 'a'.
	self assert: island fail: '.a'.
	
	p := self sea: island.
	self assert: p  parse: 'a'.
	self assert: p  parse: '..a'.