*petitgui
gtExampleNoNumber
	<gtExample>
	<label: 'Result with #Number expected, but #String given'>
	
	^ PPParserDebuggerResult 
		parse: 'hello world' 
		with: (PPArithmeticParser new productionAt: #number)