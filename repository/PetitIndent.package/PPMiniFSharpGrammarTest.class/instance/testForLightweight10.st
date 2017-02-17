as yet unclassified
testForLightweight10
	self parse: 
'for a = 1 to 10 do 
	printf a
	printf b
	printf c' rule: #for.

	self assert: result size = 8.
	self assert: result eighth size = 3.
	self assert: result eighth first first = #printf.
	self assert: result eighth first second = 'a'.
	self assert: result eighth second first = #printf.
	self assert: result eighth second second = 'b'.
	self assert: result eighth third first = #printf.	
	self assert: result eighth third second = 'c'.	