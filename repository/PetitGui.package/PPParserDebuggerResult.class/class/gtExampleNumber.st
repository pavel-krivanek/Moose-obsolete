*petitgui
gtExampleNumber
	<gtExample>
	<label: 'Result with #Number'>
	
	^ PPParserDebuggerResult 
		parse: '123' 
		with: (PPArithmeticParser new productionAt: #number)