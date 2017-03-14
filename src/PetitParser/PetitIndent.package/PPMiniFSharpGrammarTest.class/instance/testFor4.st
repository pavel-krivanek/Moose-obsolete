as yet unclassified
testFor4
	self parse: 
'for a = 1 to 10 do 
   printf a
   ;printf b;
done' rule: #for.

	self assert: result size = 8.
	self assert: result eighth size = 3.
	self assert: result eighth first first = #printf.
	self assert: result eighth first second = 'a'.
	self assert: result eighth second first = #printf.
	self assert: result eighth second second = 'b'.