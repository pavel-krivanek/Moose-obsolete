tests - indentation
testAlign
	|  align p setIl restoreIl blank |
	
	setIl := #setIl asParser.
	restoreIl := #restoreIl asParser.
	align := #align asParser.
	blank := #blank asParser.
	
	p := blank, setIl, 'a' asParser, align, 'b' asParser, restoreIl.
	
	self assert: p  parse: ' a     
 b'.