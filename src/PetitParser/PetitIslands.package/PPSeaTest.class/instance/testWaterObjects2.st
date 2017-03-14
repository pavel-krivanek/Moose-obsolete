tests - water objects
testWaterObjects2
	| parser source |
	context := PPContext new.

	parser := (self sea: ('class' asParser, self identifier trim, 'endclass' asParser ==> #second)
						 water: self multilineCommentParser / self singleCommentParser / #any asParser) 				star.
	
	source := ' /* class Bar endclass */ 
	class Foo 
	endclass
	/* 
	   class Borg
	   endclass
	*/
	// class Qwark endclass 
	class Zorg 
	endclass
	'.
	
	self assert: parser parse: source.
	self assert: result size = 2.
	self assert: result first second = 'Foo'.	
	self assert: result second second = 'Zorg'.	
