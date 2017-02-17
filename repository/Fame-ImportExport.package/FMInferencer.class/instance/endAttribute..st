parsing
endAttribute: name 
	
	| frame attribute |
	frame := stack pop.
	attribute := frame key.
	attribute addElementCount: frame value.