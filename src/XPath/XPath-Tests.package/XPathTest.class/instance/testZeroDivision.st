tests
testZeroDivision
	#('0 div 0' '0.0 div 0.0' '0 div 0.0' '0.0 div 0') do: [:each |
		self assert: each asXPath evaluate isNaN].

	"ensure nan propagates"
	#('(0 div 0) div 0' '(0.0 div 0.0) div 0' '(0 div 0.0) div 0' '(0.0 div 0) div 0') do: [:each |
		self assert: each asXPath evaluate isNaN].

	"if the sign is the same, the infinity should be positive"
	#('1 div 0' '0.1 div 0.0' '1 div 0.0' '0.1 div 0'
		'-1 div -0' '-0.1 div -0.0' '-1 div -0.0' '-0.1 div -0') do: [:each |
		self assert: each asXPath evaluate = Float infinity].

	"otherwise it should be negative"
	#('-1 div 0' '-0.1 div 0.0' '1 div -0.0' '0.1 div -0') do: [:each |
		"avoid #negativeInfinity for portability"
		self assert: each asXPath evaluate = Float xPathNegativeInfinity].