testing
testWrapped
	| parser |
	parser := $a asParser wrapped.
	
	self assert: parser parse: 'a' to: $a.
	self assert: parser fail: 'b'.
	
	parser := (($a asParser , $b asParser ) wrapped , $c asParser).
	self assert: parser parse: 'abc' to: #(#($a $b) $c)