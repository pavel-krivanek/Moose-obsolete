tests
testSubstringFunction
	#('substring("onetwothree", 4, 3)'
		'substring("onetwothree", 4)'
		'substring("onetwothree", -3, 7)'
		'substring("onetwothree", 12, 2)'
		'substring("", 0, 1)'
		'substring("", 0)')
		with:
			#('two'
				'twothree'
				'one'
				''
				''
				'')
		do: [:expression :result |
			self assert: expression asXPath evaluate = result].

	"from the spec"
	#('substring("12345",2,3)'
		'substring("12345",2)'
		'substring("12345", 1.5, 2.6)'
		'substring("12345", 0, 3)'
		'substring("12345", 0 div 0, 3)'
		'substring("12345", 1, 0 div 0)'
		'substring("12345", -42, 1 div 0)'
		'substring("12345", -1 div 0, 1 div 0)')
		with:
			#('234'
				'2345'
				'234'
				'12'
				''
				''
				'12345'
				'')
		do: [:expression :result |
			self assert: expression asXPath evaluate = result].