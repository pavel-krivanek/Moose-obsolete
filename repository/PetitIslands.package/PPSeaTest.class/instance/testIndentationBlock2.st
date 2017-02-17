tests - indentation
testIndentationBlock2
	|  begin content end block setIl restoreIl     |
	
	setIl:= #setIl asParser.
	restoreIl := #restoreIl asParser.
		
	begin := setIl, 'begin' asParser ==> [:e | #begin ].
	content := 'foo' asParser plus.
	end := 'end' asParser, restoreIl ==> [:e | #end ].
	block := PPDelegateParser new.
	
	block setParser: 	begin trimLeft,
								(self sea: (block / content) trimOnside)  star,
							end trimAlign.
			
	self assert: block parse: '
		begin
			foo
			bar
			begin
				bar
				foo
				foo
				baz
			end
			bar
			foo
		end'.

	self assert: result size = 3.
	self assert: result second size = 3.
	self assert: result second second second second size = 2.