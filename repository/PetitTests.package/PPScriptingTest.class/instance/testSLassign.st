tests
testSLassign
	
	self assert: self straightLineParser
		parse: 'abc:=1'
		to: #(#($a #($b $c) ':=' #(#(#($1 #()) #()) #())) #())