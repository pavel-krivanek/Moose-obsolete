testing-mapping
testTrimSpaces
	| parser |
	parser := $a asParser token trimSpaces.
	
	self assert: parser parse: 'a' toToken: 1 stop: 1.
	self assert: parser parse: 'a ' toToken: 1 stop: 1.
	self assert: parser parse: 'a	' toToken: 1 stop: 1.
	self assert: parser parse: 'a  ' toToken: 1 stop: 1.
	self assert: parser parse: 'a 
	 ' toToken: 1 stop: 1.
		
	self assert: parser parse: 'a' toToken: 1 stop: 1.
	self assert: parser parse: ' a' toToken: 2 stop: 2.
	self assert: parser parse: '	a' toToken: 2 stop: 2.
	self assert: parser parse: '    a' toToken: 5 stop: 5.
	self assert: parser parse: '   
a' toToken: 5 stop: 5.
	
	self assert: parser parse: 'aa' toToken: 1 stop: 1 end: 1.
	self assert: parser parse: 'a	a' toToken: 1 stop: 1 end: 2.
	self assert: parser parse: 'a  a' toToken: 1 stop: 1 end: 3.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'