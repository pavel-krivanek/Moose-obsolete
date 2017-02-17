tests - indentation
testIndentationCompare
	|  aligns p setIl restoreIl |
	
	aligns := self aligns.
	setIl := self setIl.
	restoreIl := self restoreIl.
	
	p := (setIl, aligns, restoreIl, (aligns not)).
	
	self assert: p  parse: ''.