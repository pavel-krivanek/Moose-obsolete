testing-mapping
testFlatten
	| parser |
	parser := $a asParser flatten.
	
	self assert: parser parse: 'a' to: 'a'.
	self assert: parser parse: #($a) to: #($a).
	
	self assert: parser fail: ''.
	self assert: parser fail: 'b'