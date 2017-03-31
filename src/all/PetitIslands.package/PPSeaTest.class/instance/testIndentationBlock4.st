tests - indentation
testIndentationBlock4
	|  begin content end block setIl restoreIl     |
	
	setIl:= #setIl asParser.
	restoreIl := #restoreIl asParser.
	
	begin := setIl, 'begin' asParser ==> [:e | #begin ].
	content := 'foo' asParser plus.
	end := 'end' asParser, restoreIl ==> [:e | #end ].
	block := PPDelegateParser new.
	
	block setParser: 	begin trimLeft,
								(self sea: (block / content) trimOnside) star,
							end trimAlign.
			
	self assert: (block sea ==> #second) star parse: '
		begin
			foo
			bar
			foo
		end
		
		begin
			bar
		
		begin
			foo
			bar
		end'.

	self assert: result size = 2.
	self assert: result first second size = 2.
	self assert: result second second size = 1.	