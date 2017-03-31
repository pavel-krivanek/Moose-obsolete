tests - indentation
testIndentationBlock3
	|  begin content end block setIl restoreIl     |
	
	setIl:= #setIl asParser.
	restoreIl := #restoreIl asParser.
	
	begin := setIl, 'begin' asParser ==> [:e | #begin ].
	content := 'foo' asParser plus.
	end := 'end' asParser, restoreIl ==> [:e | #end ].
	block := PPDelegateParser new.
	
	block setParser: 	begin trimLeft,
								(self sea: ((block / content) trimOnside)) star,
							end trimAlign.
			
	self assert: block parse: '
		begin
			foo
			begin
				bar
				foo
			end
			begin
				bar
			bar
			foo
		end'.

	self assert: result size = 3.
	self assert: result second size = 3.