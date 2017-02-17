*petitgui
gtExampleAlmostArithmetic
	<gtExample>
	<label: 'Incomplete arithmetic expression'>
	
	^ PPParserDebuggerResult 
		parse: '1 + ' 
		with: PPArithmeticParser new