*petitgui
gtExampleArithmetic
	<gtExample>
	<label: 'Arithmetic expression'>
	
	^ PPParserDebuggerResult 
		parse: '1 + 2' 
		with: PPArithmeticParser new