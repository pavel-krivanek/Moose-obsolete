tests - indentation
testIndentationBlock
	|  begin content end block setIl restoreIl     |
	
	setIl:= #setIl asParser.
	restoreIl := #restoreIl asParser.
	
	begin := setIl, 'begin' asParser ==> [:e | #begin ].
	content := 'foo' asParser.
	end := 'end' asParser, restoreIl ==> [:e | #end ].
	block := PPDelegateParser new.
	
	block setParser: 	begin trimLeft,
								(self sea: (block / content) trimOnside)  star,
							end trimAlign.
			
	self assert: block parse: '
		begin
			foo
			bar
			foo
		end'.

	self assert: result size = 3.
	self assert: result second size = 2.
	self assert: result second first second = 'foo'.
	
	self assert: block parse: '
		begin
			foo
			foo
		end'.

	self assert: result size = 3.
	self assert: result second size = 2.
	self assert: result second first second = 'foo'.
	self assert: result second second second = 'foo'.